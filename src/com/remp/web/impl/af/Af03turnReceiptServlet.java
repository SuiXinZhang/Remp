package com.remp.web.impl.af;

public class Af03turnReceiptServlet extends Af03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("turnreceipt");
		return "af/af03add";
	}
}
