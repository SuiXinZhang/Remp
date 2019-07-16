package com.remp.web.impl.ad;

public class Ad06findByIdApplyServlet extends Ad06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad06addApply";
	}
}
