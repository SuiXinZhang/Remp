package com.remp.web.impl.ac;

public class Ac03ModifyServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "�ͻ������޸�");
		this.savePageInstance();
		return "ac/addFollow";
	}

}
