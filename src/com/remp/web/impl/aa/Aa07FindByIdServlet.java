package com.remp.web.impl.aa;

public class Aa07FindByIdServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/buildingAdd";
	}

}
