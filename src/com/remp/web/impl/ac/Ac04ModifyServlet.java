package com.remp.web.impl.ac;

public class Ac04ModifyServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "�ͻ���Ϣ�޸�", "�޸ĳɹ�,�ÿͻ����Ϊ", "aac402");
		this.savePageInstance();
		return "ac/addClient";
	}

}
