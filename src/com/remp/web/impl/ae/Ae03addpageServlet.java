package com.remp.web.impl.ae;

public class Ae03addpageServlet extends Ae03BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.saveInfo("getAa08List");
		return "ae/ae03add";
	}

}
