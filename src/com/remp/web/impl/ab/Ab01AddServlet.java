package com.remp.web.impl.ab;

public class Ab01AddServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addPlan", "Ìí¼Ó");
		return "ab01Add";
	}
}
