package com.remp.web.impl.af;

public class Af07StateServlet extends Af07ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyState", "…Ë÷√");
		this.savePageDate();
		return "af/af07Query";
	}

}
