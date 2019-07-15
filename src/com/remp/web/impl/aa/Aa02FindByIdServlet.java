package com.remp.web.impl.aa;

public class Aa02FindByIdServlet extends Aa02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/projectAdd";
	}

}
