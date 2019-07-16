package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad07ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad07ControllerSupport extends ControllerSupport 
{
	public Ad07ControllerSupport() 
	{
		this.setServices(new Ad07ServicesImpl());
	}
}
