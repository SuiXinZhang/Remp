package com.remp.web.impl.ac;

public class Ac03DelByIdServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "������Ϣ����ɾ��");
		this.savePageDataForDelete();
		return "ac/followManage";
	}

}
