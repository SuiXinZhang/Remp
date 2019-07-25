package com.remp.web.impl.ad;

public class Ad01deleteByIdServlet extends Ad01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "×÷·Ï");
		this.savePageDataForDelete();
		return "ad/ad01queryOrder";
	}

}
