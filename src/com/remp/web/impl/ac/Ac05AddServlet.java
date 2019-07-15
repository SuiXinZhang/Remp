package com.remp.web.impl.ac;

public class Ac05AddServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "客户关怀计划");
		//this.savePageDate();
		return "ac/clientCare";
	}

}
