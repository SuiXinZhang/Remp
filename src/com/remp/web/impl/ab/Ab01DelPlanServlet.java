package com.remp.web.impl.ab;

public class Ab01DelPlanServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("batchDelete", "ɾ��");
		this.savePageDataForDelete();
		return "ab/ab01Query";
	}

}
