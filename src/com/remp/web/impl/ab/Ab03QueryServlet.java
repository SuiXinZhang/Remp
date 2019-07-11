package com.remp.web.impl.ab;

public class Ab03QueryServlet extends Ab03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ab/ab03Query";
	}

}
