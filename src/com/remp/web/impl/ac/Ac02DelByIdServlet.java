package com.remp.web.impl.ac;

public class Ac02DelByIdServlet extends Ac02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "ɾ��");
		this.savePageDataForDelete();
		return "ac/sellOpportManage";
	}
}
