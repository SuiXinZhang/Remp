package com.remp.web.impl.ad;

public class Ad02addWithdrawOrderServlet extends Ad02ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("addwithdrawOrder", "�˺�");
		return "ad/ad02queryWithdrawOrder";
	}
}
