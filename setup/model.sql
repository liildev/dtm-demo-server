CREATE EXTENSION pgcrypto;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id serial PRIMARY KEY NOT NULL,
    fullname varchar(120) NOT NULL,
    email_or_phone varchar(120) NOT NULL,
    username varchar(60) UNIQUE NOT NULL,
    region varchar(20) NOT NULL,
    password varchar(100) NOT NULL,
    gender varchar(7) NOT NULL
);

DROP TABLE IF EXISTS subjects CASCADE;

CREATE TABLE subjects (
    subject_id serial PRIMARY KEY NOT NULL,
    subject text NOT NULL
);

DROP TABLE IF EXISTS added_subjects CASCADE;

CREATE TABLE added_subjects (
    as_id serial PRIMARY KEY NOT NULL,
    first_subject_id int REFERENCES subjects (subject_id),
    second_subject_id int REFERENCES subjects (subject_id)
);

DROP TABLE IF EXISTS tests CASCADE;

CREATE TABLE tests (
    test_id serial PRIMARY KEY NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    subject_id int REFERENCES subjects (subject_id)
);

DROP TABLE IF EXISTS answers CASCADE;

CREATE TABLE answers (
    answer_id serial PRIMARY KEY NOT NULL,
    answer text NOT NULL,
    type boolean DEFAULT FALSE,
    test_id int REFERENCES tests (test_id)
);

DROP TABLE IF EXISTS universities CASCADE;

CREATE TABLE universities (
    university_id serial PRIMARY KEY NOT NULL,
    university text NOT NULL
);

DROP TABLE IF EXISTS faculties CASCADE;

CREATE TABLE faculties (
    faculty_id serial PRIMARY KEY NOT NULL,
    faculty text NOT NULL,
    university_id int REFERENCES universities (university_id),
    grand_score int NOT NULL,
    grand_place int NOT NULL,
    contract_score int NOT NULL,
    contract_place int NOT NULL,
    added_subjects_id int REFERENCES added_subjects (as_id)
);

DROP TABLE IF EXISTS passed_test CASCADE;

CREATE TABLE passed_test (
    pt_id serial PRIMARY KEY,
    user_id int REFERENCES users (user_id),
    first_subject_id int REFERENCES subjects (subject_id),
    second_subject_id int REFERENCES subjects (subject_id),
    first_subject_true_answers int NOT NULL,
    second_subject_true_answers int NOT NULL
);

DROP TABLE IF EXISTS user_info CASCADE;

CREATE TABLE user_info (
    ui_id serial PRIMARY KEY,
    user_id int REFERENCES users (user_id),
    first_subject_id int REFERENCES subjects (subject_id),
    second_subject_id int REFERENCES subjects (subject_id),
    faculty_id int REFERENCES faculties (faculty_id),
    created_at timestamp DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS results CASCADE;

CREATE TABLE results (
    result_id serial PRIMARY KEY,
    user_id int REFERENCES users (user_id),
    ui_id int REFERENCES user_info (ui_id),
    first_subject_true_answers int NOT NULL,
    second_subject_true_answers int NOT NULL,
    first_subject_id int REFERENCES subjects (subject_id),
    second_subject_id int REFERENCES subjects (subject_id),
    result_score int NOT NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP
);