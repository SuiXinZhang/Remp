package com.remp.web.impl.ad;

public class Ad04modifyPurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyPurchase", "ÐÞ¸Ä");
		return "ad/ad04addPurchase";
	}
}
