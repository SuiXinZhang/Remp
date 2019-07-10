package com.remp.web.impl.ae;

public class Ae03ModifyServlet extends Ae03BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("modify", "ÐÞ¸Ä");
		return "ae/ae03add";
	}
}
