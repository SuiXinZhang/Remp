package com.remp.web.impl.ae;

public class Ae04modServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("ae04mod", "±¸°¸");
		this.savePageInstance();
		return "ae/ae04query";
	}
}
