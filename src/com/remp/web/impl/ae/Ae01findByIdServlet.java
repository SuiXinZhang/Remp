package com.remp.web.impl.ae;

public class Ae01findByIdServlet extends Ae01BaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ae/ae01add";
	}

}
