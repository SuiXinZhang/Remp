package com.remp.web.impl.aa;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.remp.services.impl.aa.Aa02ServicesImpl;
import com.remp.system.tools.Tools;

@MultipartConfig
@WebServlet("/aa/Aa02FileModifyServlet")
public class Aa02FileModifyServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//创建services
		Aa02ServicesImpl services = new Aa02ServicesImpl();
		//织入dto并绑定
		Map<String, Object> dto= Tools.createDto(request);
		
		
		String filePath=null;
		String dataPath = null;
		
		//在有上传文件时做文件上传处理
	    Part part = request.getPart("fileaaa216");
	    if(part.getSubmittedFileName()!="")
	    {
			
			//得到文件存储路径
			String rootUrl = request.getServletContext().getRealPath("/");
			
			//获得一个全新的id并将其转为String,来防止文件重名
			String id = (String) dto.get("aaa201");
			
			dataPath = "/static/layui/images"+"/"+id  + part.getSubmittedFileName();
			
			filePath = rootUrl+ dataPath;
			
			part.write(filePath);
			
			System.out.println("上传的文件路径是"+filePath);
	    }
		
	    dto.put("aaa216", dataPath);
		services.setMapDto(dto);
		
		//添加通知信息到数据库
		try {
			if(services.modifyProject())
			{
				request.setAttribute("msg", "项目信息修改成功");
			}
			else
			{
				request.setAttribute("msg", "项目信息修改失败");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//执行一遍修改后的查询
		Map<String, String> ins = null;
		try {
			ins = services.findById();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ins!=null)
		{
			request.setAttribute("ins", ins);
		}
		else
		{
			request.setAttribute("msg", "提示:该数据已删除或禁止访问");
		}
		
		request.getRequestDispatcher("/aa/projectAdd.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
