package com.remp.web.impl.ae;

public class Ae07ModifyServlet extends Ae07BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "�޸�");
		this.savePageInstance();
		return "ae/ae07add";
	}

}
