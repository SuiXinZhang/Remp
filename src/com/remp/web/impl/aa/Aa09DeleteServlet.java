package com.remp.web.impl.aa;


public class Aa09DeleteServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteMethods", "���ʽ����ɾ��");
		this.savePageDataForDelete();
		return "aa/methodManage";
	}

}
