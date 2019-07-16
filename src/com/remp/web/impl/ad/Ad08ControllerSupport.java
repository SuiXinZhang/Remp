package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad08ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad08ControllerSupport extends ControllerSupport 
{
	public Ad08ControllerSupport() 
	{
		this.setServices(new Ad08ServicesImpl());
	}
}
