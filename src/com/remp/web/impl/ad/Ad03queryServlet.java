package com.remp.web.impl.ad;

public class Ad03queryServlet extends Ad03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad03query";
	}
}
