package com.remp.web.impl.ad;

public class Ad06queryApplyServlet extends Ad06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad06queryApply";
	}
}
