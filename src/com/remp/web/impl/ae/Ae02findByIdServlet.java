package com.remp.web.impl.ae;

public class Ae02findByIdServlet extends Ae02BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae02add";
	}
}
