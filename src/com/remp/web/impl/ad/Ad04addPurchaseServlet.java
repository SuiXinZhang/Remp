package com.remp.web.impl.ad;

public class Ad04addPurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addPurchase", "��Ӷ���");
		return "ad/ad04addPurchase";
	}

}
