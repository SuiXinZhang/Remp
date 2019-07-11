package com.remp.web.impl.ac;

public class Ac04ModifyServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "客户信息修改", "修改成功,该客户编号为", "aac402");
		this.savePageInstance();
		return "ac/addClient";
	}

}
