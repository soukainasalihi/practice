package com.infy.eventregistration;

import org.junit.jupiter.api.Test;

import com.infy.eventregistration.repository.EventRepository;
import com.infy.eventregistration.repository.ParticipantRepository;
import com.infy.eventregistration.service.EventService;
import com.infy.eventregistration.service.EventServiceImpl;

public class EventRegistrationApplicationTests {
	
	private EventRepository eventRepository;
	
	private ParticipantRepository participantRepository;
	
	private EventService eventService = new EventServiceImpl();
	
	public void getParticipantsByEventVenueNoParticipantsFoundTest() {
		
	}
	
	@Test
	public void registerParticipantNoEventFoundTest() {
		
	}
}
