package com.remp.web.impl.ad;

public class Ad01addOrderServlet extends Ad01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addOrder", "���", "��ӳɹ�,�ÿͻ������ź�Ϊ:", "oaad108");
		return "ad/ad01addOrder";
	}

}
