package com.remp.web.impl.ab;

public class Ab01ModifyServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyPlan", "�޸�");
		this.savePageInstance();
		return "ab/ab01Add";
	}

}
