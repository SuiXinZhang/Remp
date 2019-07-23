package com.remp.web.impl.ae;

public class Ae04showServlet extends AeShowBaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("showAe04Info");
		this.QueryInfo("getAe04date");
		return "ae/showae04";
	}

}
