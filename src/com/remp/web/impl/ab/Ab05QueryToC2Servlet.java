package com.remp.web.impl.ab;

public class Ab05QueryToC2Servlet extends Ab05ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.QueryInfo("queryC2");
		return "ab/ab05C2";
	}

}
