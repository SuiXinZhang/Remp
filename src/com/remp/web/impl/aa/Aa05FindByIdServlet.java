package com.remp.web.impl.aa;

public class Aa05FindByIdServlet extends Aa05ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/typeAdd";
	}

}
