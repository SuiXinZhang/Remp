package com.remp.web.impl.ad;

public class Ad03cancelReserveServlet extends Ad03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("cancelReserve", "ȡ������");
		this.savePageDate();
		return "ad/ad03query";
	}

}
