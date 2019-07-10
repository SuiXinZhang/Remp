package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad04ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad04ControllerSupport extends ControllerSupport 
{
	public Ad04ControllerSupport() 
	{
		this.setServices(new Ad04ServicesImpl());
	}
}
