package com.remp.web.impl.ad;

public class Ad06addApplyServlet extends Ad06ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addApply", "ÃÌº”…Í«Î");
		return "ad/ad06addApply";
	}

}
