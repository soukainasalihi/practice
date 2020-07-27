create table meeting (
	meeting_id BIGINT IDENTITY primary key,
	scheduler_name VARCHAR(50),
	team_name VARCHAR(50),
	purpose VARCHAR(100),
	meeting_date DATE,
);

INSERT INTO meeting (meeting_id, scheduler_name, team_name, purpose, meeting_date) VALUES (11, 'Scotty Adams', 'ETAMYSJAVA', 'Discuss the new tool', '2020-07-28');
INSERT INTO meeting (meeting_id, scheduler_name, team_name, purpose, meeting_date) VALUES (12, 'James Williamson', 'ETAMYSMS', 'Team Meeting', '2020-07-02');
INSERT INTO meeting (meeting_id, scheduler_name, team_name, purpose, meeting_date) VALUES (13, 'Maryanne Lue', 'ETAMYSBI', 'Birthday Celebrations', '2020-07-20');
INSERT INTO meeting (meeting_id, scheduler_name, team_name, purpose, meeting_date) VALUES (14, 'Eva Longora', 'ETAMYSUI', 'Awards Ceremony', '2020-07-12');
INSERT INTO meeting (meeting_id, scheduler_name, team_name, purpose, meeting_date) VALUES (15, 'Matt Banish', 'ETAMYSAI', 'Discuss appraisals schedule', '2020-07-08');
 