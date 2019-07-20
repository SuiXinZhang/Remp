package com.remp.web.impl;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.remp.services.impl.ac.AcServicesImpl;

import jdk.nashorn.internal.runtime.JSONFunctions;
import netscape.javascript.JSObject;

/**
 * Servlet implementation class getClientGroupServlet
 */
@WebServlet("/getClientGroupServlet")
public class getClientGroupServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String qaac403 = request.getParameter("qaac403");
		qaac403 = URLDecoder.decode(qaac403, "UTF-8");
		
		String qaac402 = request.getParameter("qaac402");
		qaac402 = URLDecoder.decode(qaac402, "UTF-8");
		
		System.out.println(qaac403.length() + "*********" + qaac402.length());
		
		AcServicesImpl impl = new AcServicesImpl();
		List<Map<String,String>> rows = new ArrayList<>();
		try {
			rows = impl.findClientGroup(qaac402,qaac403);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		String str = JSONObject.toJSONString(rows);
		System.out.println(str);
		//"\"date\":"+
		response.getWriter().write(str);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
