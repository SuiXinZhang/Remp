package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad01ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad01ControllerSupport extends ControllerSupport 
{
	public Ad01ControllerSupport() 
	{
		this.setServices(new Ad01ServicesImpl());
	}

}
