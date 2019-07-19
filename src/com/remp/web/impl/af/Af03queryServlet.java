package com.remp.web.impl.af;

public class Af03queryServlet extends Af03ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "af/af03query";
	}
}
