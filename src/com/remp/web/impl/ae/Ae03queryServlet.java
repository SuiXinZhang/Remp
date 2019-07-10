package com.remp.web.impl.ae;

public class Ae03queryServlet extends Ae03BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageDate();
		return "ae/ae03query";
	}

}
