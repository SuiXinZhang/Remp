package com.remp.web.impl.ae;

public class Ae04findByIdServlet extends Ae04BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae04add";
	}

}
