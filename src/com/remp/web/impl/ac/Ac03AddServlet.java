package com.remp.web.impl.ac;

public class Ac03AddServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "�ͻ��������");
		this.savePageInstance();
		return "ac/addFollow";
	}
}
