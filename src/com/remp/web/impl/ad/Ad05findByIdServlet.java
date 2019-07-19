package com.remp.web.impl.ad;

public class Ad05findByIdServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad05add";
	}
}
