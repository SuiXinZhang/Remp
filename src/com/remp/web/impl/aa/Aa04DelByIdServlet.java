package com.remp.web.impl.aa;

public class Aa04DelByIdServlet extends Aa04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdEmp", "ɾ��");
		this.savePageDataForDelete();
		return "aa/empManage";
	}

}
