package com.remp.web.impl.aa;

public class Aa06AddServlet extends Aa06ControllerSupport{


	@Override
	public String execute() throws Exception {
		this.update("addArea", "�������");
		this.savePageInstance();
		
		return "aa/areaAdd";
	}

}
