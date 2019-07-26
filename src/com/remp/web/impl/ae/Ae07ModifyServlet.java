package com.remp.web.impl.ae;

public class Ae07ModifyServlet extends Ae07BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		this.savePageInstance();
		return "ae/ae07add";
	}

}
