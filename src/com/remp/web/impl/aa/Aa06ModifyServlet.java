package com.remp.web.impl.aa;

public class Aa06ModifyServlet extends Aa06ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.update("modifyArea", "������Ϣ�޸�");
		this.savePageInstance();
		return "aa/areaAdd";
	}

}
