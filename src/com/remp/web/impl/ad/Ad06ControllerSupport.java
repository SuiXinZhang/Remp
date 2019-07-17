package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad06ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad06ControllerSupport extends ControllerSupport 
{
	public Ad06ControllerSupport() 
	{
		this.setServices(new Ad06ServicesImpl());
	}
}
