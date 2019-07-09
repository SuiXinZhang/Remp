package com.remp.web.impl.ae;

public class Ae01queryServlet extends Ae01BaseSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ae/ae01query";
	}
}
