package com.remp.web.impl.ae;

public class Ae07findByIdServlet extends Ae07BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae07add";
	}

}
