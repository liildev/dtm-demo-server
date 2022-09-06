INSERT INTO universities (university)
    VALUES ('TOSHKENT DAVLAT TRANSPORT UNIVERSITETI'), ('TOSHKENT MOLIYA INSTITUTI'), ('TOSHKENT TIBBIYOT AKADEMIYASI'), ('TOSHKENT TO‘QIMACHILIK VA YENGIL SANOAT INSTITUTI'), ('O‘ZBEKISTON MILLIY UNIVERSITETI');

-- Transport univer
INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Elektr energetikasi', 1, 140, 18, 103, 32, 1), ('Havo kemalarining texnik ekspluatatsiyasi', 1, 161, 2, 101, 23, 1), ('Iqtisodiyot', 1, 171, 3, 125, 22, 2), ('Marketing', 1, 148, 3, 88, 22, 2), ('Transport vositalari muhandisligi', 1, 120, 9, 77, 16, 1);

-- Moliya
INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Bank ishi va auditi', 2, 183, 3, 149, 47, 2), ('Biznes-tahlil', 2, 166, 5, 146, 20, 2), ('Iqtisodiy xavfsizlik', 2, 166, 5, 106, 20, 2);

-- Tibbiyot
INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Xalq tabobati', 3, 135, 10, 126, 15, 3);

INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Davolash ish', 3, 166, 4, 0, 0, 3), ('Tibbiyot profilaktika ishi', 3, 129, 2, 0, 0, 3), ('Biotibbiyot muxandisligi', 3, 132, 10, 127, 15, 3);

-- To`qimachilik
INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Kimyoviy texnologiya (ishlab chiqarish turlari bo‘yicha)', 4, 98, 8, 67, 47, 3), ('Iqtisodiyot (tarmoqlar va sohalar bo‘yicha)', 4, 126, 4, 112, 32, 2), ('Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo‘yicha)', 4, 105, 32, 64, 258, 1);

-- Milliy
INSERT INTO faculties (faculty, university_id, grand_score, grand_place, contract_score, contract_place, added_subjects_id)
    VALUES ('Kimyo', 5, 131, 43, 79, 132, 3), ('Biologiya', 5, 133, 24, 114, 51, 3), ('Fizika', 5, 156, 50, 92, 140, 1), ('Ekonometrika', 5, 133, 5, 79, 20, 2);
