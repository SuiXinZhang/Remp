package com.remp.web.impl.ad;

public class Ad07addAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addAgreement", "添加", "添加成功,该合同编号是:", "aad710");
		return "ad/ad07addAgreement";
	}
}
