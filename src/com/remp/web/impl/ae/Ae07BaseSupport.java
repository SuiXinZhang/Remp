package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae07ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae07BaseSupport extends ControllerSupport
{
	public Ae07BaseSupport()
	{
		this.setServices(new Ae07ServiceImpl());
	}
}
