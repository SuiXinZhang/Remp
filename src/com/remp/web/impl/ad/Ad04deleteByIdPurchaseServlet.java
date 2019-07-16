package com.remp.web.impl.ad;

public class Ad04deleteByIdPurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "É¾³ý");
		this.savePageDataForDelete();
		return "ad/ad04queryPurchase";
	}

}
