package com.remp.web.impl.ad;

public class Ad08querysalesLogServlet extends Ad08ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad08querysalesLog";
	}
}
