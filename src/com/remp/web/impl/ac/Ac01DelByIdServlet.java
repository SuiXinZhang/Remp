package com.remp.web.impl.ac;

public class Ac01DelByIdServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteById", "ɾ��");
		this.savePageDataForDelete();
		return "ac/clueManage";
	}

}
