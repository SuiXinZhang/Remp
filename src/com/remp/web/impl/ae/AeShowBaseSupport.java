package com.remp.web.impl.ae;

import com.remp.services.impl.ae.AeInfoServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class AeShowBaseSupport extends ControllerSupport 
{
	public AeShowBaseSupport()
	{
		this.setServices(new AeInfoServiceImpl());
	}
}
