package com.remp.web.impl.aa;

public class Aa03ModifyServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyTeam", "�Ŷ���Ϣ�޸�");
		this.savePageInstance();
		return "aa/teamAdd";
	}

}
