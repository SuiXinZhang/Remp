package com.remp.web.impl.ab;

public class Ab01DelPlanServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("batchDelete", "É¾³ý");
		this.savePageDataForDelete();
		return "ab/ab01Query";
	}

}
