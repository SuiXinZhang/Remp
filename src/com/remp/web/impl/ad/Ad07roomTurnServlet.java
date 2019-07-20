package com.remp.web.impl.ad;

public class Ad07roomTurnServlet extends Ad07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("roomTurn");
		return "ad/ad07addAgreement";
	}
}
