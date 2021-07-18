package com.infy.eventregistration.dto;

import java.time.LocalDate;

import com.infy.eventregistration.entity.Participant;

public class ParticipantDTO {
	
	private Integer participantId;
	private String name;
	private String emailId;
	private String gender;
	private LocalDate registrationDate;
	private EventDTO eventDTO;
	
	public Integer getParticipantId() {
		return participantId;
	}
	public void setParticipantId(Integer participantId) {
		this.participantId = participantId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public LocalDate getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(LocalDate registrationDate) {
		this.registrationDate = registrationDate;
	}
	public EventDTO getEventDTO() {
		return eventDTO;
	}
	public void setEventDTO(EventDTO event) {
		this.eventDTO = event;
	}
	public static Participant prepareEntity(ParticipantDTO participantDTO) {
		Participant participant = new Participant();
		participant.setName(participantDTO.getName());
		participant.setEmailId(participantDTO.getEmailId());
		participant.setGender(participantDTO.getGender());
		participant.setRegistrationDate(participantDTO.getRegistrationDate());
		return participant;
	}
	public static ParticipantDTO prepareDTO(Participant participant) {
		ParticipantDTO participantDTO = new ParticipantDTO();
		participantDTO.setParticipantId(participant.getParticipantId());
		participantDTO.setName(participant.getName());
		participantDTO.setEmailId(participant.getEmailId());
		participantDTO.setGender(participant.getGender());
		participantDTO.setRegistrationDate(participant.getRegistrationDate());
		return participantDTO;
	}
}
