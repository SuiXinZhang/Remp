package com.remp.web.impl.aa;

public class Aa08ModifyServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyRooms", "������Ϣ�����޸�");
		this.savePageDate();
		return "aa/roomsModify";
	}

}
