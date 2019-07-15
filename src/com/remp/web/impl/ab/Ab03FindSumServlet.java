package com.remp.web.impl.ab;

public class Ab03FindSumServlet extends Ab03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("findSum");
		return "ab/ab03Summary";
	}

}
