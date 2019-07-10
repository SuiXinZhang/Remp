package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab01ServicesImpl;

public class Ab01FindByIdServlet extends PlanControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ab/ab01Add";
	}

}
