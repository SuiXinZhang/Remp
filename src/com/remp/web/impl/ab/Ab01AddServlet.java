package com.remp.web.impl.ab;

public class Ab01AddServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addPlan", "���");
		return "ab01Add";
	}
}
