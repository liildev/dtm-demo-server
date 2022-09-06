INSERT INTO tests (title, description, subject_id)
    VALUES ('Choose the answer which correctly completes the sentence.', 'I’ll have much more time next week because I … all my exams by then.', 3), ('Choose the answer which correctly completes the sentence.', 'By the time Jane leaves her work today, she … the budget report.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'By May, I … this car for five years', 3), 
    ('Choose the answer which correctly completes the sentence.', '… a lot of fish, if it doesn’t rain?', 3), 
    ('Choose the answer which correctly completes the sentence.', 'After much debate, we all agreed that we … enter the competition.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'Don’t forget that I … to our new office by the time you get back from holiday.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'It has been snowing since morning and I’m afraid it… by Friday.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'By the time school opens again. I … in this restaurant eight weeks.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'On July 21, 1954, Walt Disney started building his dream park on 160 … in Anaheim, California, not far from Los Angeles.', 3), 
    ('Choose the answer which correctly completes the sentence.', 'There are a lot of … in the street.', 3);

--
INSERT INTO answers (answer, test_id)
    VALUES ('shall have done',21), ('shall be doing', 21), ('have done', 321);

INSERT INTO answers (answer, type, test_id)
    VALUES ('shall do', TRUE, 21);

--
INSERT INTO answers (answer, test_id)
    VALUES ('finishes', 22), ('will finish', 22), ('has finished', 22);

INSERT INTO answers (answer, type, test_id)
    VALUES ('will have finished', TRUE, 22);

--
INSERT INTO answers (answer, test_id)
    VALUES ('have had', 23), ('will have', 23), ('will have had', 23);

INSERT INTO answers (answer, type, test_id)
    VALUES ('will be having', TRUE, 23);

--
INSERT INTO answers (answer, test_id)
    VALUES ('There has been', 24), ('Will it be', 24), ('There will be', 24);

INSERT INTO answers (answer, type, test_id)
    VALUES ('Will there be', TRUE, 24);

--
INSERT INTO answers (answer, test_id)
    VALUES ('would', 25), ('shall', 25), ('must', 25);

INSERT INTO answers (answer, type, test_id)
    VALUES ('will', TRUE, 25);

--
INSERT INTO answers (answer, test_id)
    VALUES ('move', 26), ('will have moved', 26), ('I’ll be moving', 26);

INSERT INTO answers (answer, type, test_id)
    VALUES ('I’ll move', TRUE, 26);

--
INSERT INTO answers (answer, test_id)
    VALUES ('will not be stopping', 27), ('won’t stop', 27), ('won’t have stopped', 27);

INSERT INTO answers (answer, type, test_id)
    VALUES ('doesn’t stop', TRUE, 27);

--
INSERT INTO answers (answer, test_id)
    VALUES ('will have worked', 28), ('would work', 28), ('shall work', 28);

INSERT INTO answers (answer, type, test_id)
    VALUES ('will work', TRUE, 28);

--
INSERT INTO answers (answer, test_id)
    VALUES ('acres', 29), ('acres’', 29), ('acre', 29);

INSERT INTO answers (answer, type, test_id)
    VALUES ('acre’s', TRUE, 29);

--
INSERT INTO answers (answer, test_id)
    VALUES ('trees', 30), ('trees’', 30), ('tree', 30);

INSERT INTO answers (answer, type, test_id)
    VALUES ('tree’s', TRUE, 30);
