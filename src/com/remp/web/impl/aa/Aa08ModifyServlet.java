package com.remp.web.impl.aa;

public class Aa08ModifyServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyRooms", "房间信息批量修改");
		this.savePageDate();
		return "aa/roomsModify";
	}

}
