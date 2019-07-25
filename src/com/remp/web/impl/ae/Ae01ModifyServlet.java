package com.remp.web.impl.ae;

public class Ae01ModifyServlet extends Ae01BaseSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyAe01", "ÐÞ¸Ä");
		this.savePageInstance();
		return "ae/ae01add";
	}
}
