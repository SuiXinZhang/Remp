package com.remp.web.impl.ac;

public class Ac02DeleteServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delete", "销售机会删除");
		this.savePageDataForDelete();
		return "ac/sellOpportManage";
	}

}
