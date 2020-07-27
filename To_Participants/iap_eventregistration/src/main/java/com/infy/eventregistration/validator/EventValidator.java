package com.infy.eventregistration.validator;

import java.time.LocalDate;

import com.infy.eventregistration.dto.ParticipantDTO;
import com.infy.eventregistration.exception.EventRegistrationException;

public class EventValidator {
	private EventValidator() {
		
	}
	
	public static void validateParticipant(ParticipantDTO participantDTO) throws EventRegistrationException {
		
	}

	public static Boolean isValidGender(String gender) {
		return null;
	}

	public static Boolean isValidRegistrationDate(LocalDate registrationDate) {
		return null;
	}
}
