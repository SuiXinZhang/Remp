package com.remp.web.impl.aa;

public class Aa02DeleteServlet  extends Aa02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteProjects", "��Ŀ����ɾ��");
		this.savePageDataForDelete();
		return "aa/projectManage";
	}

}
