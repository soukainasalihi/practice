package com.infy.eventregistration.utility;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.infy.eventregistration.exception.EventRegistrationException;

public class LoggingAspect {
	
	private static final Log LOGGER = LogFactory.getLog(LoggingAspect.class);
	
	public void logServiceException(EventRegistrationException exception) {
		
	}

}
