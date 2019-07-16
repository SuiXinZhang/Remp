package com.remp.web.impl.ae;

public class Ae07modServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("executeAll", "ÅúÁ¿Ö´ÐÐ");
		return "ae/ae07query";
	}

}
