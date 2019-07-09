package com.remp.web.impl.ae;

public class Ae01AddServlet extends Ae01BaseSupport {
	@Override
	public String execute() throws Exception {
		this.update("addAe01", "Ìí¼Ó");
		return "ae/ae01add";
	}
}
