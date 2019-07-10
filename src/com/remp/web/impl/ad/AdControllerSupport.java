package com.remp.web.impl.ad;

import com.remp.services.impl.ad.AdServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class AdControllerSupport extends ControllerSupport
{
	public AdControllerSupport() 
	{
		this.setServices(new AdServicesImpl());
	}


}
