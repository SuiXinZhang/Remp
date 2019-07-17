package com.remp.web.impl.ae;

public class Ae04modServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.saveInfo("ae04mod");
		return "ae/ae04Message";
	}
}
