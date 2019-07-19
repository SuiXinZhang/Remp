package com.remp.web.impl.ad;

public class Ad05queryServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad05query";
	}
}
