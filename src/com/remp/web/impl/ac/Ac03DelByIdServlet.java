package com.remp.web.impl.ac;

public class Ac03DelByIdServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "跟进信息批量删除");
		this.savePageDataForDelete();
		return "ac/followManage";
	}

}
