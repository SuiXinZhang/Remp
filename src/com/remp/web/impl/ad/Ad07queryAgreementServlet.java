package com.remp.web.impl.ad;

public class Ad07queryAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/ad07queryAgreement";
	}
}
