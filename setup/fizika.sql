INSERT INTO tests (title, description, subject_id)
    VALUES ('Togri javobni tanlang', 'Aylana trayektoriya boʻylab 3 m/s3m/s tezlik bilan harakatlanayotgan jism 24 s24s davomida aylanani 66 marta bosib oʻtdi, 3 s3s vaqt davomida chiziqli tezlik vektorning yoʻnalishi necha gradusga oʻzgaradi?', 2),
    ('Togri javobni tanlang', 'Agar motosiklchi radiusi 4040 mm boʻlgan ayalana boʻylab 7272 km/skm/s tezlik bilan aylanayotgan boʻlsa, uning gorizont bilan hosil qilgan ogʻish burchagi qancha boʻladi?', 2),
    ('Togri javobni tanlang', 'Aylana trayektoriya boʻylab 2 m/s2m/s tezlik bilan harakatlanayotgan jism 20 s20s davomida aylanani 55 marta bosib oʻtdi, 1 s1s vaqt davomida chiziqli tezlik vektori oʻzgarishining moduli qancha m/sm/s ga teng boʻladi?', 2),
    ('Togri javobni tanlang', 'Radiusi 50 sm50sm boʻlgan gʻildirak gorizontal sirt boʻylab 7.2 km/soat7.2km/soat tezlik bilan sirpanishsiz gʻildiramoqda. Gʻildirak gardishidagi uning markazi bilan bir sathda yotgan nuqtaning tezligi qanday (m/s)(m/s)?', 2),
    ('Togri javobni tanlang', 'Mexanik harakat II gʻildirakdan IIII gʻildarakga tasmali uzatma yordamida uzatiladi. Agar II gʻildirak minutiga 30003000 marta aylansa, gʻildiraklarning radiuslari mos ravishda 33 va 6 sm6sm boʻlsa, ikkinchi gʻildirakning burchak tezligini hisoblab toping (rad/s)(rad/s).' ,2),
    ('Togri javobni tanlang', 'Aylana trayektoriya boʻylab 2 m/s2m/s tezlik bilan harakatlanayotgan jismning burchakli tezligi 0.5 rad/s0.5rad/s ga teng boʻlsa, 3.14 s3.14s vaqt oraligʻida chiziqli tezlik vektotrining yoʻnalishi necha gradusga oʻzgaradi.', 2),
    ('Togri javobni tanlang', 'Aylana trayektoriya boʻylab m/sm/s tezlik bilan harakatlanayotgan jism 60 s60s davomida aylanani 1515 marta bosib oʻtdi. 1 s1s vaqt davomida chiziqli tezlik vektori oʻzgarishining moduli qancha (m/s)(m/s) ga teng boʻladi?', 2),
    ('Togri javobni tanlang', 'Moddiy nuqta aylana boʻylab 90 km/soat90km/soat tezlik bilan tekis aylanmoqda. Davrning ikkidan bir qismida moddiy nuqta tezligining oʻzgarishini toping (m/s)(m/s)?', 2),
    ('Togri javobni tanlang', 'Mashina botqoq yoʻlda oʻtirib qoldi. Mashina shinasiga ilashgan loy parchasi qanday tezlik (m/s)(m/s) bilan etiladi? Mashina shinasining radiusi 30 sm30sm boʻlib, u 5 ayl/s5ayl/s tezlik bilan aylanmoqda.', 2),
    ('Togri javobni tanlang', 'Aylanayotgan disk ustidagi diametrlari 4 sm4sm ga farq qiladigan ikki nuqtaning chiziqli tezliklari orasidagi farq 0.2\pi m/s0.2πm/s ga teng boʻlsa, diskning aylanish chastotasini toping (Hz)(Hz).', 2);


--
INSERT INTO answers (answer, test_id)
    VALUES ('80', 11), ('270', 11), ('30', 11);

INSERT INTO answers (answer, type, test_id)
    VALUES ('100', TRUE, 11);

--
INSERT INTO answers (answer, test_id)
    VALUES ('π/4', 12), ('π/5', 12), ('π/6', 12);

INSERT INTO answers (answer, type, test_id)
    VALUES ('π/3', TRUE, 12);

--
INSERT INTO answers (answer, test_id)
    VALUES ('1.4', 13), ('2.8', 13), ('4', 13);

INSERT INTO answers (answer, type, test_id)
    VALUES ('2', TRUE, 13);

--
INSERT INTO answers (answer, test_id)
    VALUES ('2.82', 14), ('3.3', 14), ('2.1', 14);

INSERT INTO answers (answer, type, test_id)
    VALUES ('1.41', TRUE, 14);

--
INSERT INTO answers (answer, test_id)
    VALUES ('20π', 15), ('2π', 15), ('10π', 15);

INSERT INTO answers (answer, type, test_id)
    VALUES ('5π', TRUE, 15);

--
INSERT INTO answers (answer, test_id)
    VALUES ('180', 16), ('60', 16), ('90', 16);

INSERT INTO answers (answer, type, test_id)
    VALUES ('45', TRUE, 16);

--
INSERT INTO answers (answer, test_id)
    VALUES ('4.2', 17), ('3.4', 17), ('6.7', 17);

INSERT INTO answers (answer, type, test_id)
    VALUES ('4.3', TRUE, 17);

--
INSERT INTO answers (answer, test_id)
    VALUES ('50', 18), ('0', 18), ('5', 18);

INSERT INTO answers (answer, type, test_id)
    VALUES ('10', TRUE, 18);

--
INSERT INTO answers (answer, test_id)
    VALUES ('12.56', 19), ('9.42', 19), ('6.48', 19);

INSERT INTO answers (answer, type, test_id)
    VALUES ('10.36', TRUE, 19);

--
INSERT INTO answers (answer, test_id)
    VALUES ('1', 20), ('0.5', 20), ('6.28', 20);

INSERT INTO answers (answer, type, test_id)
    VALUES ('5', TRUE, 20);