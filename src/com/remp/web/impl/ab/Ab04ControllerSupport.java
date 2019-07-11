package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab04ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ab04ControllerSupport extends ControllerSupport 
{
	public Ab04ControllerSupport() 
	{
		this.setServices(new Ab04ServicesImpl());
	}

}
