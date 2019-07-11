package com.remp.web.impl.ac;

import com.remp.services.impl.ac.Ac02SevicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ac02ControllerSupport extends ControllerSupport {
	public Ac02ControllerSupport() {
		this.setServices(new Ac02SevicesImpl());
	}
}
