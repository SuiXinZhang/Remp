package com.remp.web.impl.ab;

public class Ab04EditServlet extends Ab04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("edit", "²Ù×÷");
		return "ab/ab04Edit";
	}

}
