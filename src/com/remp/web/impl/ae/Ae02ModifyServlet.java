package com.remp.web.impl.ae;

public class Ae02ModifyServlet extends Ae02BaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		this.savePageInstance();
		return "ae/ae02add";
	}

}
