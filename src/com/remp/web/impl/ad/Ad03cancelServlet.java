package com.remp.web.impl.ad;

public class Ad03cancelServlet extends Ad03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("cancelRoom", "ȡ��ѡ��");
		return "ad/ad03query";
	}

}
