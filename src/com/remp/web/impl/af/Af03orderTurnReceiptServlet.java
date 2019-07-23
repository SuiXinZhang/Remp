package com.remp.web.impl.af;

public class Af03orderTurnReceiptServlet extends Af03ControllerSupport 
{
	public String execute() throws Exception 
	{
		this.saveInfo("orderTurnReceipt");
		return "af/af03add";
	}
}
