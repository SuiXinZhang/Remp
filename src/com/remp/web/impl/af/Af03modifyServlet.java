package com.remp.web.impl.af;

public class Af03modifyServlet extends Af03ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "���");
		return "af/af03add";
	}

}
