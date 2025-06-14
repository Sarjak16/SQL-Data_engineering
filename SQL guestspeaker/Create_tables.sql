-- STAFF
CREATE TABLE staff (
    staffID NUMBER(5) PRIMARY KEY,
    fname VARCHAR2(20) NOT NULL,
    lname VARCHAR2(20) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    phone VARCHAR2(15)
);

-- COMPANY
CREATE TABLE company (
    companyID NUMBER(5) PRIMARY KEY,
    companyName VARCHAR2(50) NOT NULL,
    industry VARCHAR2(50),
    contactEmail VARCHAR2(50),
    contactPhone VARCHAR2(15),
    staffContactID NUMBER(5),
    CONSTRAINT fk_company_staff FOREIGN KEY (staffContactID) REFERENCES staff(staffID)
);

-- SPEAKER
CREATE TABLE speaker (
    speakerID NUMBER(5) PRIMARY KEY,
    fname VARCHAR2(20) NOT NULL,
    lname VARCHAR2(20) NOT NULL,
    email VARCHAR2(50),
    phone VARCHAR2(15),
    companyID NUMBER(5),
    CONSTRAINT fk_speaker_company FOREIGN KEY (companyID) REFERENCES company(companyID)
);

-- TOPIC
CREATE TABLE topic (
    topicID NUMBER(5) PRIMARY KEY,
    topicName VARCHAR2(50) NOT NULL
);

-- ROOM
CREATE TABLE room (
    roomID NUMBER(5) PRIMARY KEY,
    roomName VARCHAR2(20) NOT NULL,
    capacity NUMBER(3)
);

-- LECTURE
CREATE TABLE lecture (
    lectureID NUMBER(5) PRIMARY KEY,
    lectureTitle VARCHAR2(100) NOT NULL,
    lectureDate DATE NOT NULL,
    lectureTime VARCHAR2(10) NOT NULL,
    speakerID NUMBER(5),
    staffID NUMBER(5),
    roomID NUMBER(5),
    CONSTRAINT fk_lecture_speaker FOREIGN KEY (speakerID) REFERENCES speaker(speakerID),
    CONSTRAINT fk_lecture_staff FOREIGN KEY (staffID) REFERENCES staff(staffID),
    CONSTRAINT fk_lecture_room FOREIGN KEY (roomID) REFERENCES room(roomID)
);

-- CONTACT_HISTORY
CREATE TABLE contact_history (
    contactID NUMBER(5) PRIMARY KEY,
    companyID NUMBER(5),
    staffID NUMBER(5),
    contactDate DATE NOT NULL,
    purpose VARCHAR2(100),
    notes CLOB,
    CONSTRAINT fk_contact_company FOREIGN KEY (companyID) REFERENCES company(companyID),
    CONSTRAINT fk_contact_staff FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

-- SPEAKER_TOPIC
CREATE TABLE speaker_topic (
    speakerID NUMBER(5),
    topicID NUMBER(5),
    PRIMARY KEY (speakerID, topicID),
    CONSTRAINT fk_st_speaker FOREIGN KEY (speakerID) REFERENCES speaker(speakerID),
    CONSTRAINT fk_st_topic FOREIGN KEY (topicID) REFERENCES topic(topicID)
);
