DROP SCHEMA IF EXISTS event_registration_db;

CREATE SCHEMA event_registration_db;
USE event_registration_db;

CREATE TABLE event (
	event_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	event_date DATE NOT NULL,
	venue VARCHAR(25) NOT NULL,
	max_count INT NOT NULL
);

CREATE TABLE participant (
	participant_id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	email_id VARCHAR(100) NOT NULL UNIQUE,
	gender VARCHAR(10) NOT NULL,
	registration_date DATE NOT NULL,
	event_id INT,
	CONSTRAINT ps_participant_id_pk PRIMARY KEY (participant_id),
	CONSTRAINT fs_event_participant_fk FOREIGN KEY (event_id) REFERENCES event(event_id)
);

INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (101, 'Dancing', SYSDATE()+INTERVAL 2 DAY, 'A6-Hall', 5);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (102, 'Singing', SYSDATE()+INTERVAL 4 DAY, 'B5-Hall', 8);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (103, 'Essay Writing', SYSDATE()+INTERVAL 1 DAY, 'C4-Hall', 3);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (104, 'Poem Recital', SYSDATE()+INTERVAL 7 DAY, 'B5-Hall', 5);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (105, 'Ethical Hacking', SYSDATE()+INTERVAL 3 DAY, 'C4-Hall', 4);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (106, 'Public Speaking', SYSDATE()+INTERVAL 4 DAY, 'A6-Hall', 2);

INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1001, 'Jake', 'jake@infy.com', 'Male', SYSDATE(), 101);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1002, 'Sarah', 'sarah@infy.com', 'Female', SYSDATE()-INTERVAL 2 DAY, 103);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1003, 'Aaron', 'ar123@infy.com', 'Male', SYSDATE()-INTERVAL 2 DAY, 106);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1004, 'Bale', 'bl9@infy.com', 'Others', SYSDATE()-INTERVAL 4 DAY, 101);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1005, 'Mike', 'mike1@infy.com', 'Others', SYSDATE()-INTERVAL 3 DAY, 105);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1006, 'Donna', 'don@infy.com', 'Female', SYSDATE()-INTERVAL 5 DAY, 106);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1007, 'Rachel', 'rak@infy.com', 'Female', SYSDATE()-INTERVAL 1 DAY, 104);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1008, 'Michelle', '12mic@infy.com', 'Female', SYSDATE(), 102);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1009, 'Zane', 'zane@infy.com', 'Male', SYSDATE(), 102);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (1010, 'Kent', 'ko@infy.com', 'Male', SYSDATE()-INTERVAL 3 DAY, 102);
