package com.remp.web.impl.ad;

public class Ad04subscribePurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad04addPurchase";
	}

}
