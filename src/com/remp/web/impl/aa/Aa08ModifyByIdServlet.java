package com.remp.web.impl.aa;

public class Aa08ModifyByIdServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyRoom", "房间信息修改");
		this.savePageInstance();
		return "aa/roomModify";
	}

}
