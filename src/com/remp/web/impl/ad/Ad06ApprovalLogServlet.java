package com.remp.web.impl.ad;

public class Ad06ApprovalLogServlet extends Ad06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.QueryInfo("queryApproval");
		return "ad/ad06ApprovalLog";
	}
}
