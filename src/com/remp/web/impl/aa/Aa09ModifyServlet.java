package com.remp.web.impl.aa;

public class Aa09ModifyServlet extends Aa09ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.update("modifyMethod", "���ʽ�޸�");
		this.savePageInstance();
		return "aa/methodAdd";
	}

}
