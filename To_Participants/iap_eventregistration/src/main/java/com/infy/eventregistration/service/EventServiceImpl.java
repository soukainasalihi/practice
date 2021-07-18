package com.infy.eventregistration.service;

import java.util.List;

import com.infy.eventregistration.dto.ParticipantDTO;
import com.infy.eventregistration.exception.EventRegistrationException;
import com.infy.eventregistration.repository.EventRepository;
import com.infy.eventregistration.repository.ParticipantRepository;

public class EventServiceImpl implements EventService {

	private EventRepository eventRepository;

	private ParticipantRepository participantRepository;

	@Override
	public List<ParticipantDTO> getParticipantsByEventVenue(String venue) throws EventRegistrationException {
		return null;
	}

	@Override
	public ParticipantDTO registerParticipant(ParticipantDTO participantDTO) throws EventRegistrationException {
		return null;
	}
}
