package com.remp.web.impl.ac;

public class Ac04DelByIdServlet extends Ac04ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "�ͻ���Ϣɾ��");
		this.savePageDataForDelete();
		return "ac/clientManage";
	}
}
