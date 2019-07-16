package com.remp.web.impl.aa;

public class Aa06FindByIdServlet extends Aa06ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/areaAdd";
	}


}
