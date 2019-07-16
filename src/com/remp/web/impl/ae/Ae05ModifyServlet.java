package com.remp.web.impl.ae;

public class Ae05ModifyServlet extends Ae05BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("modify", "ÐÞ¸Ä");
		return "ae05mod";
	}
}
