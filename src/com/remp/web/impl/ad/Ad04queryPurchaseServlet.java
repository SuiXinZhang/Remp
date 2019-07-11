package com.remp.web.impl.ad;

public class Ad04queryPurchaseServlet extends Ad04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad04queryPurchase";
	}

}
