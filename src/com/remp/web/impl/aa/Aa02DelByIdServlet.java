package com.remp.web.impl.aa;

public class Aa02DelByIdServlet extends Aa02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdProject", "ɾ��");
		this.savePageDataForDelete();
		return "aa/projectManage";
	}

}
