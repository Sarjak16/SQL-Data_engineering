-- STAFF
INSERT INTO staff VALUES (1001, 'Jane', 'Doe', 'jane.doe@southuni.ac.uk', '07123456789');
INSERT INTO staff VALUES (1002, 'Amit', 'Patel', 'amit.patel@southuni.ac.uk', '07234567890');
INSERT INTO staff VALUES (1003, 'Leena', 'Singh', 'leena.singh@southuni.ac.uk', '07345678901');

-- COMPANY
INSERT INTO company VALUES (2001, 'TechWorld Ltd', 'Technology', 'contact@techworld.com', '02081234567', 1001);
INSERT INTO company VALUES (2002, 'HealthSys Inc', 'Healthcare', 'info@healthsys.com', '02082345678', 1002);

-- SPEAKER
INSERT INTO speaker VALUES (3001, 'Alice', 'Brown', 'alice@techworld.com', '07000000001', 2001);
INSERT INTO speaker VALUES (3002, 'David', 'Green', 'david@healthsys.com', '07000000002', 2002);
INSERT INTO speaker VALUES (3003, 'Brian', 'White', 'brian@techworld.com', '07000000003', 2001);

-- TOPIC
INSERT INTO topic VALUES (4001, 'Cybersecurity');
INSERT INTO topic VALUES (4002, 'AI and Machine Learning');
INSERT INTO topic VALUES (4003, 'Health Tech Innovations');
INSERT INTO topic VALUES (4004, 'Cloud Computing');

-- ROOM
INSERT INTO room VALUES (5001, 'Lab A1', 30);
INSERT INTO room VALUES (5002, 'Lecture Hall B', 100);

-- LECTURE
INSERT INTO lecture VALUES (6001, 'Intro to Cybersecurity', TO_DATE('2025-06-01', 'YYYY-MM-DD'), '10:00:00', 3001, 1001, 5002);
INSERT INTO lecture VALUES (6002, 'Future of Health Tech', TO_DATE('2025-06-02', 'YYYY-MM-DD'), '11:00:00', 3002, 1002, 5001);
INSERT INTO lecture VALUES (6003, 'AI in Business', TO_DATE('2025-06-05', 'YYYY-MM-DD'), '14:00:00', 3001, 1001, 5002);
INSERT INTO lecture VALUES (6004, 'Cloud Trends 2025', TO_DATE('2025-06-06', 'YYYY-MM-DD'), '15:00:00', 3003, 1001, 5001);

-- CONTACT HISTORY
INSERT INTO contact_history VALUES (7001, 2001, 1001, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'Guest lecture invitation', 'Discussed lecture on cybersecurity.');
INSERT INTO contact_history VALUES (7002, 2002, 1002, TO_DATE('2025-05-12', 'YYYY-MM-DD'), 'Placement discussion', 'Exploring internship opportunities.');

-- SPEAKER_TOPIC
INSERT INTO speaker_topic VALUES (3001, 4001);
INSERT INTO speaker_topic VALUES (3001, 4002);
INSERT INTO speaker_topic VALUES (3002, 4003);
INSERT INTO speaker_topic VALUES (3003, 4004);
