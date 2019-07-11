package com.remp.web.impl.ad;

public class Ad03addconfirmServlet extends Ad03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addConfirm", "Ñ¡·¿");
		return "ad/ad03confirm";
	}

}
