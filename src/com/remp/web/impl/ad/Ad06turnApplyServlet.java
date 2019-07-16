package com.remp.web.impl.ad;

public class Ad06turnApplyServlet extends Ad06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("turnApply");
		return "ad/ad06addApply";
	}
}
