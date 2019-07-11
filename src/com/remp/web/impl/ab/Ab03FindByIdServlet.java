package com.remp.web.impl.ab;

public class Ab03FindByIdServlet extends Ab03ControllerSupport
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ab/ab03Add";
	}
	
	
}
