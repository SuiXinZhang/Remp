package com.remp.web.impl.ae;

public class Ae03findByIdServlet extends Ae03BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae03add";
	}

}
