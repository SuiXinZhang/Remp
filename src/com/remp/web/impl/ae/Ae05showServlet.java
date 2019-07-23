package com.remp.web.impl.ae;

public class Ae05showServlet extends AeShowBaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("showAe05Info");
		this.QueryInfo("getAe05date");
		return "ae/showae05";
	}

}
