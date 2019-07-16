package com.remp.web.impl.ae;

public class Ae07addpageServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("getAa08List");
		return "ae/ae07add";
	}

}
