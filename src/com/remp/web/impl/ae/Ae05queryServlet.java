package com.remp.web.impl.ae;

public class Ae05queryServlet extends Ae05BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageDate();
		return "ae/ae05query";
	}

}
