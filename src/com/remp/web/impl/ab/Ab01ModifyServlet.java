package com.remp.web.impl.ab;

public class Ab01ModifyServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyPlan", "�޸�");
		return "ab/ab01Add";
	}

}
