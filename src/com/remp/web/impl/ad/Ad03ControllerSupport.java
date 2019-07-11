package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad03ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad03ControllerSupport extends ControllerSupport 
{
	public Ad03ControllerSupport() 
	{
		this.setServices(new Ad03ServicesImpl());
	}
}
