package com.remp.web.impl.ad;

public class Ad08findByIdServlet extends Ad08ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad08addsalesLog";
	}
}
