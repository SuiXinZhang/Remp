package com.remp.web.impl.aa;

public class Aa09FindByIdServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/methodAdd";
	}

}
