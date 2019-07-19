package com.remp.web.impl.ae;

public class Ae04ModifyServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		this.savePageInstance();
		return "ae/ae04add";
	}

}
