package com.remp.web.impl.ae;

public class Ae07modServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("executeAll", "����ִ��");
		return "ae/ae07query";
	}

}
