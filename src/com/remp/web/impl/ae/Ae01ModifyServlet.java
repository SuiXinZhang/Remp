package com.remp.web.impl.ae;

public class Ae01ModifyServlet extends Ae01BaseSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyAe01", "�޸�");
		return "ae/ae01add";
	}
}
