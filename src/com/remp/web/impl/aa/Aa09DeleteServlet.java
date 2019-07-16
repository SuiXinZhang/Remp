package com.remp.web.impl.aa;


public class Aa09DeleteServlet extends Aa09ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteMethods", "付款方式批量删除");
		this.savePageDataForDelete();
		return "aa/methodManage";
	}

}
