package com.remp.web.impl.ae;

public class Ae04queryServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ae/ae04query";
	}

}
