package com.remp.web.impl.ac;

public class Ac05DeleteServlet extends Ac05ControllerSupport {
	@Override
	public String execute() throws Exception
	{
		this.update("delete", "�ͻ��ػ�ɾ��");
		this.savePageDataForDelete();
		return "ac/careManage";
	}

}
