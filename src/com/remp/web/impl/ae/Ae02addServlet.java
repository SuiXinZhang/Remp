package com.remp.web.impl.ae;

public class Ae02addServlet extends Ae02BaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addae02", "Ìí¼Ó");
		return "ae/ae02add";
	}
}
