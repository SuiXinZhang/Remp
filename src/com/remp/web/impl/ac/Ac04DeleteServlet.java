package com.remp.web.impl.ac;

public class Ac04DeleteServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("delete", "�ͻ���Ϣɾ��");
		this.savePageDataForDelete();
		return "ac/clientManage";
	}

}
