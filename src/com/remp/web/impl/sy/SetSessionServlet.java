package com.remp.web.impl.sy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.remp.services.impl.SetsessionServiceImpl;

@WebServlet("/setprjtoSession")
public class SetSessionServlet extends HttpServlet {
	private SetsessionServiceImpl service = new SetsessionServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		try {
			service.setSession(request.getSession());
			service.setPrjsToSession();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException
	{
		doGet(request, response);
	}

}
