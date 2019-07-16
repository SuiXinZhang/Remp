package com.remp.web.impl.ad;

public class Ad07turnAgreementServlet extends Ad07ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ad/ad07addAgreement";
	}

}
