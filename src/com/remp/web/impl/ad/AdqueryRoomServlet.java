package com.remp.web.impl.ad;

public class AdqueryRoomServlet extends AdControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ad/adqueryRoom";
	}

}
