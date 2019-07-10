package com.remp.web.impl.ad;

import com.remp.services.impl.ad.Ad02ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ad02ControllerSupport extends ControllerSupport 
{
	public Ad02ControllerSupport() 
	{
		this.setServices(new Ad02ServicesImpl());
	}
}
