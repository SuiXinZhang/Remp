package com.remp.web.impl.aa;

public class Aa09AddServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addMethod", "��Ӹ��ʽ");
		this.savePageInstance();
		return "aa/methodAdd";
	}

}
