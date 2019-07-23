package com.remp.web.impl.af;

public class Af03AgreeTurnReceiptServlet extends Af03ControllerSupport 
{
	public String execute() throws Exception 
	{
		this.saveInfo("AgreeTurnReceipt");
		return "af/af04add";
	}
}
