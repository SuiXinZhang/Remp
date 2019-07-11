package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab03ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ab03ControllerSupport extends ControllerSupport 
{

	public Ab03ControllerSupport() 
	{
		this.setServices(new Ab03ServicesImpl());
	}

}
