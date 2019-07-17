package com.remp.web.impl.aa;

public class Aa08DeleteServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteRooms", "房间批量删除");
		this.savePageDataForDelete();
		return "aa/roomManage";
	}

}
