package com.remp.web.impl.ab;

public class Ab04EditServlet extends Ab04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("edit", "����");
		this.savePageInstance();
		return "ab/ab04Edit";
	}

}
