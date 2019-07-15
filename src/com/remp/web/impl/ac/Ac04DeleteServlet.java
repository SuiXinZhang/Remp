package com.remp.web.impl.ac;

public class Ac04DeleteServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("delete", "客户信息删除");
		this.savePageDataForDelete();
		return "ac/clientManage";
	}

}
