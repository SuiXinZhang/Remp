package com.remp.web.impl.ad;

public class Ad04deleteByIdPurchaseServlet extends Ad04ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "ɾ��");
		this.savePageDataForDelete();
		return "ad/ad04queryPurchase";
	}

}
