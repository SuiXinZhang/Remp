package com.remp.web.impl.ad;

public class Ad06batchExamineServlet extends Ad06ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("batchExamine", "…Û≈˙");
		this.savePageDate();
		return "ad/ad06queryApply";
	}
}
