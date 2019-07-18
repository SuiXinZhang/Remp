package com.remp.web.impl.af;

public class Af03findByIdServlet extends Af03ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "af/af03add";
	}

}
