package com.remp.web.impl.aa;

public class Aa05DelByIdServlet extends Aa05ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdType", "ɾ��");
		this.savePageDataForDelete();
		return "aa/typeManage";
	}

}
