package com.remp.web.impl.ad;

public class Ad03addReserveServlet extends Ad03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addReserve", "���");
		return "ad/ad03otherAdd";
	}

}
