package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa01ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa01ControllerSupport extends ControllerSupport {

	public Aa01ControllerSupport() {
		this.setServices(new Aa01ServicesImpl());
	}

}
