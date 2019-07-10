package com.remp.web.impl.ac;

import com.remp.services.impl.ac.Ac01ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ac01ControllerSupport extends ControllerSupport {
	public Ac01ControllerSupport ()
	{
		this.setServices(new Ac01ServicesImpl());
	}
}
