package com.remp.web.impl;

import com.remp.web.support.ControllerSupport;

public class TestServlet extends ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		System.out.println("≤‚ ‘");
		return "test.jsp";
	}
}
