package com.remp.web.impl.ac;

public class Ac05AddServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "�ͻ��ػ��ƻ�");
		//this.savePageDate();
		return "ac/clientCare";
	}

}
