package com.remp.web.impl.ab;

public class Ab01DelByIdServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("delById", "ɾ��");
		this.savePageDataForDelete();
		return "ab/ab01Query";
	}

}
