package com.remp.web.impl.ro;

import com.remp.services.impl.RoomServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class RoomBaseSupport extends ControllerSupport 
{
	public RoomBaseSupport() 
	{
		this.setServices(new RoomServiceImpl());
	}
}
