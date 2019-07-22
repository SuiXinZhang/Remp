package com.remp.web.impl.af;


public class Af01AddServlet extends Af01ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "¿ÕÆ±¾ÝÌí¼Ó");
		System.out.println("++++++++++++++" + dto.get("aaf101"));
		this.saveAttribute("aaf101", dto.get("aaf101"));
		this.savePageDate();
		return "af/af02Query";
	}
}
