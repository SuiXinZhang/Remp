package com.remp.web.impl.ac;

public class Ac03ModifyServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "客户跟进修改");
		this.savePageInstance();
		return "ac/addFollow";
	}

}
