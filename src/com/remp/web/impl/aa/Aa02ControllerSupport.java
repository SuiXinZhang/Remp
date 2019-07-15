package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa02ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa02ControllerSupport extends ControllerSupport {

	public Aa02ControllerSupport() {
		this.setServices(new Aa02ServicesImpl());
	}


}
