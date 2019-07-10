package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad03RoomServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad03RoomControllerSupport extends ControllerSupport 
{
	public Ad03RoomControllerSupport() 
	{
		this.setServices(new Ad03RoomServicesImpl());
	}

}
