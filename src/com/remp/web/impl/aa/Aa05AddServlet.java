package com.remp.web.impl.aa;

public class Aa05AddServlet extends Aa05ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.update("addType", "�����������");
		this.savePageInstance();
		
		return "aa/typeAdd";
	}

}
