package com.remp.web.impl.ae;

public class Ae01showServlet extends AeShowBaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.saveInfo("showAe01Info");
		this.QueryInfo("getAe01date");
		return "ae/showae01";
	}

}
