package com.remp.web.impl.ac;

public class Ac02DeleteServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delete", "���ۻ���ɾ��");
		this.savePageDataForDelete();
		return "ac/sellOpportManage";
	}

}
