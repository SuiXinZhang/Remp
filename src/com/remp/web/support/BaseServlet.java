package com.remp.web.support;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.html")
public class BaseServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String toPath = null;
		try
		{
			String uri = request.getRequestURI();
			int index = uri.lastIndexOf("/");
			String baseName= uri.substring(index+1).replace(".html", "");
			String packageName = "com.remp.web.impl."+baseName.substring(0,2)+".";
			String firstName = baseName.substring(0,1).toUpperCase()+baseName.substring(1);
			System.out.println(firstName);
			BaseController controller = (BaseController)Class.forName(packageName+firstName+"Servlet").newInstance();
			
			controller.setMapDto(this.creatDto(request));
			
			toPath = controller.execute();
			
			this.parseRequestAttribute(request, controller.getAttribute());
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.setAttribute("msg", "Ã· æ:Õ¯¬Áπ ’œ!");
			//request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		request.getRequestDispatcher("/"+toPath+".jsp").forward(request, response);
		
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	private void parseRequestAttribute(HttpServletRequest request,Map<String,Object> requestAttribute)
	{
		Set<Map.Entry<String,Object>> set = requestAttribute.entrySet();
		for(Map.Entry<String, Object> entry:set)
		{
			request.setAttribute(entry.getKey(), entry.getValue());
		}
		requestAttribute.clear();
	}
	
	
	private Map<String,Object> creatDto(HttpServletRequest request)throws Exception
	{
		Map<String,String[]> map = request.getParameterMap();
		int size = map.size();
		String value[] = null;
		
		int initSize = ((int)(size/0.75)) +1;
		Map<String,Object> dto = new HashMap<>(initSize);
		
		Set<Map.Entry<String, String[]>> set = map.entrySet();
		for(Map.Entry<String, String[]> entry:set)
		{
			value = entry.getValue();
			if(value.length == 1)
			{
				if(value[0] != null && !value[0].equals(""))
				{
					dto.put(entry.getKey(), value[0]);
				}
			}
			else
			{
				dto.put(entry.getKey(), value);
			}
		}
		return dto;
	}
}
