package com.remp.web.impl.aa;

public class Aa02ModifyServlet extends Aa02ControllerSupport {
	
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyProject", "��Ŀ�޸�");
		this.savePageInstance();
		return "aa/projectAdd";
	}

}
