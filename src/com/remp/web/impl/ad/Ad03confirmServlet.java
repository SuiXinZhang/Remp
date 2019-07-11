package com.remp.web.impl.ad;

public class Ad03confirmServlet extends Ad03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad03confirm";
	}

}
