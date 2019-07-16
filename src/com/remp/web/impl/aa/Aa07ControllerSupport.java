package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa07ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa07ControllerSupport extends ControllerSupport {

	public Aa07ControllerSupport() {
		this.setServices(new Aa07ServicesImpl());
	}

}
