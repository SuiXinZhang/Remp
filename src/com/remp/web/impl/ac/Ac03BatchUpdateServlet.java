package com.remp.web.impl.ac;

public class Ac03BatchUpdateServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("batchUpdate", "批量更新跟进状态");
		this.savePageDate();
		return "ac/followManage";
	}

}
