package com.remp.web.impl.aa;

import com.remp.web.support.ControllerSupport;
import com.remp.services.impl.aa.Aa09ServicesImpl;

public abstract class Aa09ControllerSupport extends ControllerSupport {

	public Aa09ControllerSupport() {
		this.setServices(new Aa09ServicesImpl());
	}


}
