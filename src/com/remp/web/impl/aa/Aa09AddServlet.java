package com.remp.web.impl.aa;

public class Aa09AddServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addMethod", "添加付款方式");
		this.savePageInstance();
		return "aa/methodAdd";
	}

}
