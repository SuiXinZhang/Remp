package com.remp.web.impl.ad;

public class Ad01findByIdServlet extends Ad01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad01addOrder";
	}

}
