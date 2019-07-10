package com.remp.web.impl.ae;

public class Ae02queryServlet extends Ae02BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageDate();
		return "ae/ae02query";
	}

}
