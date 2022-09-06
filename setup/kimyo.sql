INSERT INTO tests (title, description, subject_id)
    VALUES ('Togri javobni tanlang', 'Atomlarga tegishli bo‘lgan terminlarni ko‘rsating.', 5),
    ('Togri javobni tanlang', 'Kimyoviy elementlar keltirilgan qatorni aniqlang.', 5),
    ('Togri javobni tanlang', 'Aralashmalar berilgan qatorni toping.', 5),
    ('Togri javobni tanlang', '“Zar suvi”ning molyar massasi berilgan qatorni toping.', 5),
    ('Togri javobni tanlang', 'Suv va {H_2} gazlar aralashmasining 1212 grammiga HeHe gazi qo‘shilganda aralashmaning zichligi o‘zgarmay qoldi. Boshlang‘ich suvning massasini toping.', 5),
    ('Togri javobni tanlang', 'Azot (IIII) oksid va azot (IVIV) oksidlaridan iborat gazlar aralashmasining zichligi 1.4291.429 g/lg/l bo‘lsa, (n.sh.n.sh.)da shu aralashmadagi kislorod atomlari soni azot atomlarining sonidan necha marta ortiq bo‘ladi?', 5),
    ('Togri javobni tanlang', 'Tarkibi hajm bo‘yicha 60\%60% karbonat angidrid, 20\%20% azot va 20\%20% argondan iborat gazlar aralashmasining o‘rtacha molekulyar massasini aniqlang.', 5),
    ('Togri javobni tanlang', 'Hajmi 4848 ll bo‘lgan ammiak va uglerod (IVIV) oksid aralashmasining massasi 7272 gramm bo‘lsa, aralashmadagi har bir gazning hajmini litrda hisoblang.', 5),
    ('Togri javobni tanlang', 'Qaysi qatorda benzol gomologlari keltirilgan?', 5),
    ('Togri javobni tanlang', 'Qaysi moddalar ketma-ketligidan foydalanib buten-11 dan buten-22 olish mumkin?', 5);


--
INSERT INTO answers (answer, test_id)
    VALUES ('zichlik, protonlar soni, tashki kavat valent elektronlari, izotop, izobar, izoton, rang, ionlanishenergiyasi, atom radiusi', 41), ('yadro zaryadi, protonlar soni, zichlik, izobar, izaton, nisbiy atom massa, ionlanish energiyasi', 41), ('yadro zaryadi, protonlar soni, tashqi qavat valent elektronlari, izotop, izobar, izoton, nisbiy atom massa, ionlanish energiyasi, atom radiusi', 41);

INSERT INTO answers (answer, type, test_id)
    VALUES ('molekulyar massa, protonlar soni, tashqi qavat valent elektronlari, izotop, izobar, izoton, kimyoviy aktivlik, ionlanish energiyasi, atom radiusi', TRUE, 41);

--
INSERT INTO answers (answer, test_id)
    VALUES ('azot, ozon, vodorod, kislorod', 42), ('uglerod, kislorod, vodorod, azot', 42), ('ozon, kislorod, olmos, vodorod', 42);

INSERT INTO answers (answer, type, test_id)
    VALUES ('olmos, ozon, grafit, uglerod', TRUE, 42);

--
INSERT INTO answers (answer, test_id)
    VALUES ('karbin, olmos, neft, sut', 43), ('havo, daryo suvi, sut, tuproq', 43), ('grafit, okean suvi, neft, tabiiy gaz', 43);

INSERT INTO answers (answer, type, test_id)
    VALUES ('havo, ariq suvi, olmos, oltin', TRUE, 43);

--
INSERT INTO answers (answer, test_id)
    VALUES ('175.5175.5', 44), ('183.5', 44), ('109.5', 44);

INSERT INTO answers (answer, type, test_id)
    VALUES ('172.5', TRUE, 44);

--
INSERT INTO answers (answer, test_id)
    VALUES ('6.75', 45), ('17', 45), ('7.25', 45);

INSERT INTO answers (answer, type, test_id)
    VALUES ('5.30', TRUE, 45);

--
INSERT INTO answers (answer, test_id)
    VALUES ('2.5172.517', 46), ('2.1252.125', 46), ('1.025', 46);

INSERT INTO answers (answer, type, test_id)
    VALUES ('1.125', TRUE, 46);

--
INSERT INTO answers (answer, test_id)
    VALUES ('32', 47), ('38', 47), ('28', 47);

INSERT INTO answers (answer, type, test_id)
    VALUES ('40', TRUE, 47);

--
INSERT INTO answers (answer, test_id)
    VALUES ('18.5; 29.518.5;29.5', 48), ('12;36', 48), ('26;22', 48);

INSERT INTO answers (answer, type, test_id)
    VALUES ('29.5;18.5', TRUE, 48);

--
INSERT INTO answers (answer, test_id)
    VALUES ('ksilol; kumol; toluol', 49), ('toluol; ksilol; krezol', 49), ('m-krezol; o-krezol; p-krezol', 49);

INSERT INTO answers (answer, type, test_id)
    VALUES ('metilbenzol; propilbenzol; vinilbenzol', TRUE, 49);

--
INSERT INTO answers (answer, test_id)
    VALUES ('konsentrlangan sulfat kislota; vodorod xlorid', 50), ('vodorod bromid; natriy gidroksidning suvli eritmasi', 50), ('vodorod bromid; kaliy gidroksidning spirtli eritmasi', 50);

INSERT INTO answers (answer, type, test_id)
    VALUES ('vodorod bromid; natriy metali', TRUE, 50);