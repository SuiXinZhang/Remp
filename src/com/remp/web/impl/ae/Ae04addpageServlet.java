package com.remp.web.impl.ae;

public class Ae04addpageServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("getAa08List");
		return "ae/ae04add";
	}
}
