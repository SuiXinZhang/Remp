package com.remp.web.impl.ab;

public class Ab03AddServlet extends Ab03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("add", "���");
		return "ab/ab03Add";
	}

}
