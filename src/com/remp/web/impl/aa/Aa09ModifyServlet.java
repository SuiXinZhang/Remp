package com.remp.web.impl.aa;

public class Aa09ModifyServlet extends Aa09ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.update("modifyMethod", "付款方式修改");
		this.savePageInstance();
		return "aa/methodAdd";
	}

}
