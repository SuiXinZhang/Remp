package com.remp.web.impl.ae;

public class Ae03ModifyServlet extends Ae03BaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("modify", "�޸�");
		this.savePageInstance();
		return "ae/ae03add";
	}
}
