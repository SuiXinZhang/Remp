package com.remp.web.impl.ab;

public class Ab02UpdateServlet extends DetailedControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("updateDetailed", "�����޸�");
		savePageDate();
		return "ab/ab02Edit";
	}

}
