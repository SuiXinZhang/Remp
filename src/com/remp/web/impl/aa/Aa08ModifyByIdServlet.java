package com.remp.web.impl.aa;

public class Aa08ModifyByIdServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyRoom", "������Ϣ�޸�");
		this.savePageInstance();
		return "aa/roomModify";
	}

}
