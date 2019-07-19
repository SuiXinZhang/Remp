package com.remp.web.impl.ad;

public class Ad07modifyAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		return "ad/ad07modifyAgreement";
	}
}
