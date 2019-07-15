package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa04ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa04ControllerSupport extends ControllerSupport {

	public Aa04ControllerSupport() {
		this.setServices(new Aa04ServicesImpl());
	}


}
