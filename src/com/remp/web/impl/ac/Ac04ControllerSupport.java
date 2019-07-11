package com.remp.web.impl.ac;

import com.remp.services.impl.ac.Ac04ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ac04ControllerSupport extends ControllerSupport {
	public Ac04ControllerSupport()
	{
		this.setServices(new Ac04ServicesImpl());
	}
}
