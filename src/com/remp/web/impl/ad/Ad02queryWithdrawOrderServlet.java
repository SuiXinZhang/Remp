package com.remp.web.impl.ad;

public class Ad02queryWithdrawOrderServlet extends Ad02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad02queryWithdrawOrder";
	}
}
