package com.remp.web.impl.ad;

public class Ad07findByIdAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("findByIdAgreement");
		return "ad/ad07modifyAgreement";
	}
}
