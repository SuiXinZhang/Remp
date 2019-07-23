package com.remp.web.impl.ae;

public class Ae02showServlet extends AeShowBaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.saveInfo("showAe02Info");
		this.QueryInfo("getAe02date");
		return "ae/showae02";
	}

}
