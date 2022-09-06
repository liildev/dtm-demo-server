INSERT INTO tests (title, description, subject_id)
    VALUES ('Togri javobni tanlang', '“Drozera” o‘simligiga xos xususiyatni aniqlang.', 4), ('Togri javobni tanlang', 'Xona o‘simliklari orasida tarqalishiga ko‘ra qaysi o‘simlik birinchi o‘rinda turadi?', 4), ('Togri javobni tanlang', 'Qaysi o‘simliklarning bargi va poyasi yo‘q, lekin guli eng yirik gul hisoblanadi.', 4), ('Togri javobni tanlang', 'Sanoatda tolalarni ajratishda qaysi organizmdan foydalaniladi?', 4), ('Togri javobni tanlang', 'Qaysi zaharli o‘simlik pushti rangli gullarga va murakkab patsimon barglarga ega?', 4), ('Togri javobni tanlang', 'Qaysi yo‘sin kimyo sanoatida va tabobatda keng foydalaniladi?', 4), ('Togri javobni tanlang', 'Mevalar ta’mi hujayraning qaysi qismi bilan bog‘liq?', 4), ('Togri javobni tanlang', 'O‘simlik poydevorini aniqlang.', 4), ('Togri javobni tanlang', 'Gingko biloba o‘simliklarning qaysi bo‘limiga mansub?', 4), ('Togri javobni tanlang', 'Qaysi daraxtning shox-shabbasi g‘uj bo‘lib joylashgan?', 4);

--
INSERT INTO answers (answer, test_id)
    VALUES ('qo‘ng‘ir suvoli', 31), ('hasharotxo‘r', 31), ('ko‘sakcha meva hosil qiladi', 31);

INSERT INTO answers (answer, type, test_id)
    VALUES ('faqat bir marta gullaydi', TRUE, 31);

--ƒ
INSERT INTO answers (answer, test_id)
    VALUES ('kaktuslar', 32), ('begoniyalar', 32), ('yorongullar', 32);

INSERT INTO answers (answer, type, test_id)
    VALUES ('atirgul', TRUE, 32);

--
INSERT INTO answers (answer, test_id)
    VALUES ('volfiya', 33), ('talipot palmasi', 33), ('sekvoyyadendron', 33);

INSERT INTO answers (answer, type, test_id)
    VALUES ('raffleziya Arnoldi', TRUE, 33);

--
INSERT INTO answers (answer, test_id)
    VALUES ('xlorella suvo‘tidan', 34), ('bakteriyalardan', 34), ('sianobakteriyalardan', 34);

INSERT INTO answers (answer, type, test_id)
    VALUES ('achitqi zamburug‘laridan', TRUE, 34);

--
INSERT INTO answers (answer, test_id)
    VALUES ('tog‘turbid', 35), ('tuyaqorin', 35), ('chaqanoq', 35);

INSERT INTO answers (answer, type, test_id)
    VALUES ('gazanda', TRUE, 35);

--
INSERT INTO answers (answer, test_id)
    VALUES ('tort', 36), ('funarya', 36), ('kampirqursoq', 36);

INSERT INTO answers (answer, type, test_id)
    VALUES ('juzg‘un', TRUE, 36);

--
INSERT INTO answers (answer, test_id)
    VALUES ('sitoplazma', 37), ('yadro', 37), ('mitoxondriya', 37);

INSERT INTO answers (answer, type, test_id)
    VALUES ('hujayra shirasi', TRUE, 37);

--
INSERT INTO answers (answer, test_id)
    VALUES ('ildiz', 38), ('poya', 38), ('meva', 38);

INSERT INTO answers (answer, type, test_id)
    VALUES ('barg', TRUE, 38);

--
INSERT INTO answers (answer, test_id)
    VALUES ('Tuban o‘simliklar', 39), ('Yopiq urug‘lilar', 39), ('Ochiq urug‘lilar', 39);

INSERT INTO answers (answer, type, test_id)
    VALUES ('Yuksak sporali o‘simliklar', TRUE, 39);

--
INSERT INTO answers (answer, test_id)
    VALUES ('qarag‘ay', 40), ('tol', 40), ('olma', 40);

INSERT INTO answers (answer, type, test_id)
    VALUES ('qayrag‘och', TRUE, 40);

