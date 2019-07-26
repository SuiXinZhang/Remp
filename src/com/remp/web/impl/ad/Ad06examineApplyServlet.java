package com.remp.web.impl.ad;

public class Ad06examineApplyServlet extends Ad06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("examineApply", "…Û≈˙≥…π¶");
		return "ad/ad06queryApply";
	}
}
