CREATE TABLE event (
	event_id BIGINT PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	event_date DATE NOT NULL,
	venue VARCHAR(25) NOT NULL,
	max_count BIGINT NOT NULL
);

CREATE TABLE participant (
	participant_id BIGINT IDENTITY primary key,
	name VARCHAR(50) NOT NULL,
	email_id VARCHAR(100) NOT NULL UNIQUE,
	gender VARCHAR(10) NOT NULL,
	registration_date DATE NOT NULL,
	event_id BIGINT REFERENCES event(event_id)
);

INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (201, 'Dancing', SYSDATE()+INTERVAL 2 DAY, 'A6-Hall', 5);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (202, 'Singing', SYSDATE()+INTERVAL 4 DAY, 'B5-Hall', 8);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (203, 'Essay Writing', SYSDATE()+INTERVAL 1 DAY, 'C4-Hall', 3);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (204, 'Poem Recital', SYSDATE()+INTERVAL 7 DAY, 'B5-Hall', 5);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (205, 'Ethical Hacking', SYSDATE()+INTERVAL 3 DAY, 'C4-Hall', 4);
INSERT INTO event(event_id, name, event_date, venue, max_count) VALUES (206, 'Public Speaking', SYSDATE()+INTERVAL 4 DAY, 'A6-Hall', 2);

INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5001, 'Jake', 'jake@infy.com', 'Male', SYSDATE(), 201);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5002, 'Sarah', 'sarah@infy.com', 'Female', SYSDATE()-INTERVAL 2 DAY, 203);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5003, 'Aaron', 'ar123@infy.com', 'Male', SYSDATE()-INTERVAL 2 DAY, 206);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5004, 'Bale', 'bl9@infy.com', 'Others', SYSDATE()-INTERVAL 4 DAY, 201);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5005, 'Mike', 'mike1@infy.com', 'Others', SYSDATE()-INTERVAL 3 DAY, 205);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5006, 'Donna', 'don@infy.com', 'Female', SYSDATE()-INTERVAL 5 DAY, 206);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5007, 'Rachel', 'rak@infy.com', 'Female', SYSDATE()-INTERVAL 1 DAY, 204);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5008, 'Michelle', '12mic@infy.com', 'Female', SYSDATE(), 202);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5009, 'Zane', 'zane@infy.com', 'Male', SYSDATE(), 202);
INSERT INTO participant(participant_id, name, email_id, gender, registration_date, event_id) VALUES (5010, 'Kent', 'ko@infy.com', 'Male', SYSDATE()-INTERVAL 3 DAY, 202);
