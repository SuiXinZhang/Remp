package com.remp.web.impl.ad;

public class Ad05cancelReserveServlet extends Ad05ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("cancelReserve", "È¡ÏûÔ¤Áô");
		return "ad/ad05query";
	}
}
