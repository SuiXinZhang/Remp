package com.remp.web.impl.ro;

public class RoomServlet extends RoomBaseSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.saveInfo("getPrj");
		return "base/room";
	}
}
