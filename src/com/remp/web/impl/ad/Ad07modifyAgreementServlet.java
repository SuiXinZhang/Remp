package com.remp.web.impl.ad;

public class Ad07modifyAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "�޸�");
		return "ad/ad07modifyAgreement";
	}
}
