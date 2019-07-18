package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad05ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad05ControllerSupport extends ControllerSupport 
{
	public Ad05ControllerSupport() 
	{
		this.setServices(new Ad05ServicesImpl());
	}
}
