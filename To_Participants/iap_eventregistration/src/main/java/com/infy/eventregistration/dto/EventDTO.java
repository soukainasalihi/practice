package com.infy.eventregistration.dto;

import java.time.LocalDate;

import com.infy.eventregistration.entity.Event;

public class EventDTO {
	private Integer eventId;
	private String name;
	private LocalDate eventDate;
	private String venue;
	private Integer maxCount;
	
	public Integer getEventId() {
		return eventId;
	}
	public void setEventId(Integer eventId) {
		this.eventId = eventId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDate getEventDate() {
		return eventDate;
	}
	public void setEventDate(LocalDate eventDate) {
		this.eventDate = eventDate;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public Integer getMaxCount() {
		return maxCount;
	}
	public void setMaxCount(Integer maxCount) {
		this.maxCount = maxCount;
	}
	public static EventDTO prepareDTO(Event event) {
		EventDTO eventDTO = new EventDTO();
		eventDTO.setEventId(event.getEventId());
		eventDTO.setName(event.getName());
		eventDTO.setEventDate(event.getEventDate());
		eventDTO.setVenue(event.getVenue());
		eventDTO.setMaxCount(event.getMaxCount());
		return eventDTO;
	}
}
