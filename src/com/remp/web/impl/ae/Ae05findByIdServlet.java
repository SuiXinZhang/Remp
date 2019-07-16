package com.remp.web.impl.ae;

public class Ae05findByIdServlet extends Ae05BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae05mod";
	}
	
}
