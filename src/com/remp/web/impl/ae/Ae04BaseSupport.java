package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae04ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae04BaseSupport extends ControllerSupport 
{
	public Ae04BaseSupport() 
	{
		this.setServices(new Ae04ServiceImpl());
	}
}
