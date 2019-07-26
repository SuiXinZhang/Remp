package com.remp.web.impl.ad;

public class Ad03confirmReserveServlet extends Ad03ControllerSupport 
{
	public String execute() throws Exception 
	{
		this.saveInfo("confirmReserve");
		return "ad/ad03otherAdd";
	}
}
