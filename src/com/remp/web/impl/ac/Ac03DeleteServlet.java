package com.remp.web.impl.ac;

public class Ac03DeleteServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("delete", "������Ϣɾ��");
		this.savePageDataForDelete();
		return "ac/followManage";
	}

}
