package com.remp.web.impl.ab;

public class Ab03SummaryServlet extends Ab03ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("updateSummary", "");
		this.saveInfo("findSum");
		return "ab/ab03Summary";
	}

}
