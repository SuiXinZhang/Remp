package com.remp.web.impl.ae;

public class Ae01AddServlet extends Ae01BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("addAe01", "���");
		this.savePageDate();
		return "ae/ae01query";
	}
}
