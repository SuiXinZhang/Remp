package com.remp.web.impl.af;

public class Af07QueryServlet extends Af07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "af/af07Query";
	}

}
