package com.infy.eventregistration.api;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.infy.eventregistration.dto.ParticipantDTO;
import com.infy.eventregistration.exception.EventRegistrationException;
import com.infy.eventregistration.service.EventService;

public class EventAPI {

	private EventService eventService;

	public ResponseEntity<List<ParticipantDTO>> getParticipantsByEventVenue(String venue)
			throws EventRegistrationException {
		return null;
	}

	public ResponseEntity<ParticipantDTO> registerParticipant(ParticipantDTO participantDTO)
			throws EventRegistrationException {
		return null;
	}
}
