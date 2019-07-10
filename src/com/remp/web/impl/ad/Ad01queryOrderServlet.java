package com.remp.web.impl.ad;

public class Ad01queryOrderServlet extends Ad01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad01queryOrder";
	}
}
