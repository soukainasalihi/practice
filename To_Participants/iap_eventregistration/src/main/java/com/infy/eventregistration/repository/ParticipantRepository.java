package com.infy.eventregistration.repository;

import java.util.List;

import com.infy.eventregistration.entity.Participant;

public interface ParticipantRepository {
	List<Participant> getParticipantsByEventVenue(String venue);
}
