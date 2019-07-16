package com.remp.web.impl.aa;

public class Aa06ModifyServlet extends Aa06ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.update("modifyArea", "区域信息修改");
		this.savePageInstance();
		return "aa/areaAdd";
	}

}
