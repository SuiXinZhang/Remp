package com.remp.web.impl.ad;

public class Ad01modifyOrderServlet extends Ad01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyOrder", "�޸�");
		return "ad/ad01addOrder";
	}
}
