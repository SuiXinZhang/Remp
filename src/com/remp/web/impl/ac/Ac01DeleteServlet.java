package com.remp.web.impl.ac;

public class Ac01DeleteServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delete", "��������ɾ��");
		this.savePageDataForDelete();
		return "ac/clueManage";
	}

}
