package com.remp.web.impl.ae;

public class Ae07executeServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("execute", "ִ�в���");
		this.savePageDate();
		return "ae/ae07query";
	}

}
