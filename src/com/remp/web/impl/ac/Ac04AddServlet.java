package com.remp.web.impl.ac;

public class Ac04AddServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "�ͻ���Ϣ���", "�ÿͻ����Ϊ", "aac402");
		this.savePageInstance();
		return "ac/addClient";
	}

}
