package com.remp.web.impl.aa;

public class Aa05ModifyServlet extends Aa05ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyType", "������Ϣ�޸�");
		this.savePageInstance();
		return "aa/typeAdd";
	}

}
