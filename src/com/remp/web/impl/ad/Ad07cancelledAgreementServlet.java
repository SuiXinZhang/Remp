package com.remp.web.impl.ad;

public class Ad07cancelledAgreementServlet extends Ad07ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("cancelledAgreement", "����");
		return "ad/ad07queryAgreement";
	}

}
