package com.remp.web.impl.ae;

public class Ae02ModifyServlet extends Ae02BaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		return "ae/ae02query";
	}

}
