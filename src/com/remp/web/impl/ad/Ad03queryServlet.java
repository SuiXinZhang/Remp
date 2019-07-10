package com.remp.web.impl.ad;

public class Ad03queryServlet extends Ad03RoomControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad03query";
	}
}
