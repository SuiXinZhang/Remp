package com.remp.web.impl.ae;

public class Ae03AddServlet extends Ae03BaseSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("addAe03", "���");
		return "ae/ae03add";
	}

}
