package com.remp.web.impl.ro;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.remp.services.impl.RoomServiceImpl;

@WebServlet("/findroom")
public class RoomfindroomServlet extends HttpServlet {
	private RoomServiceImpl service = new RoomServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String ldid = request.getParameter("id");
		List<Map<String, String>> roomList = new ArrayList<>();
		System.out.println(ldid);
		try {
			roomList =  service.getroom(ldid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		String dto = JSONObject.toJSONString(roomList);
		response.getWriter().write(dto);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
