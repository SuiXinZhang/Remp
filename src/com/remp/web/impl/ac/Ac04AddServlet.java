package com.remp.web.impl.ac;

public class Ac04AddServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "客户信息添加", "该客户编号为", "aac402");
		this.savePageInstance();
		return "ac/addClient";
	}

}
