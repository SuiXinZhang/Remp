package com.remp.web.impl.ac;

public class Ac05DelByIdServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "�ͻ��ػ�ɾ��");
		this.savePageDataForDelete();
		return "ac/careManage";
	}

}
