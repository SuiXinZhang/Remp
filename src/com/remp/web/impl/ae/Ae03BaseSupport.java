package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae03ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae03BaseSupport extends ControllerSupport 
{
	public Ae03BaseSupport()
	{
		this.setServices(new Ae03ServiceImpl());
	}
}
