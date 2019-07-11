package com.remp.web.impl.ab;

public class Ab04FindByIdServlet extends Ab04ControllerSupport
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ab/ab04Edit";
	}
	
}
