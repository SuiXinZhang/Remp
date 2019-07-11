package com.remp.web.impl.ad;

public class Ad04findByIdPurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("findByIdPurchase");
		return "ad/ad04addPurchase";
	}

}
