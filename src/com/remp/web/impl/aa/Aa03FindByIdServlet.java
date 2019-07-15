package com.remp.web.impl.aa;

public class Aa03FindByIdServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/teamAdd";
	}

}
