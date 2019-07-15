package com.remp.web.impl.aa;

public class Aa02DeleteServlet  extends Aa02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteProjects", "项目批量删除");
		this.savePageDataForDelete();
		return "aa/projectManage";
	}

}
