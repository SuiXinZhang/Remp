package com.remp.web.impl.ae;

public class Ae07queryServlet extends Ae07BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.savePageDate();
		return "ae/ae07query";
	}
}
