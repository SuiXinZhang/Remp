package com.remp.web.impl.aa;


public class Aa09DelByIdServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdMethod", "ɾ��");
		this.savePageDataForDelete();
		return "aa/methodManage";
	}
}
