package com.remp.web.impl.ad;

public class Ad07addAgreementServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addAgreement", "���", "��ӳɹ�,�ú�ͬ�����:", "aad710");
		return "ad/ad07addAgreement";
	}
}
