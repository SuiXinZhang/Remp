package com.remp.web.impl.ab;

public class Ab03ModifyServlet extends Ab03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyAb03", "ÐÞ¸Ä");
		this.savePageInstance();
		return "ab/ab03Add";
	}

}
