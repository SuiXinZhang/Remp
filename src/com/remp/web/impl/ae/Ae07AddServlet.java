package com.remp.web.impl.ae;

public class Ae07AddServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("addAe07", "���");;
		return "ae/ae07add";
	}

}
