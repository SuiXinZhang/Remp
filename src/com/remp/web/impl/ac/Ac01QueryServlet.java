package com.remp.web.impl.ac;

public class Ac01QueryServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "ac/clueManage";
	}

}
