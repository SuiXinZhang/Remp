package com.remp.web.impl.ad;

public class Ad06addApplyServlet extends Ad06ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addApply", "�������");
		return "ad/ad06addApply";
	}

}
