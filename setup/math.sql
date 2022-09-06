INSERT INTO tests (title, description, subject_id)
    VALUES (' Togri javobni tanlang', '4*104*10 yozuvdagi yulduzchani shunday raqam bilan almashtiringki, hosil bo‘lgan son 4545 ga qoldiqsiz bo‘linsin', 1), ('Togri javobni tanlang', 'Quyidagi sonlardan qaysilari 1818 ga qoldiqsiz bo‘linadi?', 1), ('Togri javobni tanlang', '1782751617827516 quyidagi sonlardan qaysi biriga qoldiqsiz bo‘linadi?', 1), ('Togri javobni tanlang', 'Natural sonlar uchun quyidagi mulohazalardan qaysi biri noto‘g‘ri?', 1), ('Togri javobni tanlang', '246∗013579 soni 99 ga bo‘linishi uchun yulduzchaning o‘rniga qanday raqam qo‘yilishi kerak?', 1), ('Togri javobni tanlang', 'Berilgan p=1018978560,p=1018978560, q=8976119441q=8976119441 va r=987610734r=987610734 sonlardan qaysilari 1616 ga qoldiqsiz bo‘linadi?', 1), ('Togri javobni tanlang', 'nn raqamining qanday qiymatlarida 6134n6134n soni 33 ga qoldiqsiz bo‘linadi?', 1), ('Togri javobni tanlang', '3,6,7 va 99 raqamlaridan ularni takrorlamasdan mumkin bo‘lgan barcha 44 xonali sonlar tuzilgan. Bu sonlar ichida nechtasi 44 ga qoldiqsiz bo‘linadi?', 1), ('Togri javobni tanlang', 'Quyidagi sonlardan qaysi biri 1212 ga qoldiqsiz bo‘linmaydi?', 1), ('Togri javobni tanlang', 'nn raqamining qanday qiymatlarida 7851n7851n soni 99 ga qoldiqsiz bo‘linadi?', 1);

INSERT INTO answers (answer, test_id)
    VALUES ('0', 1), ('5', 1), ('3', 1);

INSERT INTO answers (answer, type, test_id)
    VALUES ('4', TRUE, 1);

INSERT INTO answers (answer, test_id)
    VALUES ('faqat zz', 2), ('yy va zz', 2), ('faqat yy', 2);

INSERT INTO answers (answer, type, test_id)
    VALUES ('xx va yy', TRUE, 2);

INSERT INTO answers (answer, test_id)
    VALUES ('5', 3), ('4', 3), ('10', 3);

INSERT INTO answers (answer, type, test_id)
    VALUES ('4', TRUE, 3);

INSERT INTO answers (answer, test_id)
    VALUES ('33 ga va 55 ga bo‘linadigan son 1515 ga bo‘linadi', 4), ('Agar ikki qo‘shiluvchidan biri 1111 ga bo‘linib, ikkinchisi 1111 ga bo‘linmasa, ularning yig‘indisi 1111 ga bo‘linmaydi', 4), ('Berilgan sonlar bo‘linadigan sonlarning eng kattasi ularning eng katta umumiy bo‘luvchisi bo‘ladi', 4);

INSERT INTO answers (answer, type, test_id)
    VALUES ('33 ga bo‘lingan son 99 ga ham bo‘linadi', TRUE, 4);

INSERT INTO answers (answer, test_id)
    VALUES ('0', 5), ('7', 5), ('8', 5);

INSERT INTO answers (answer, type, test_id)
    VALUES ('4', TRUE, 5);

INSERT INTO answers (answer, test_id)
    VALUES ('p', 6), ('q', 6), ('r', 6);

INSERT INTO answers (answer, type, test_id)
    VALUES ('p va q', TRUE, 6);

INSERT INTO answers (answer, test_id)
    VALUES ('4', 7), ('1;4;7', 7), ('2', 7);

INSERT INTO answers (answer, type, test_id)
    VALUES ('4;2', TRUE, 7);

INSERT INTO answers (answer, test_id)
    VALUES ('4', 8), ('2', 8), ('8', 8);

INSERT INTO answers (answer, type, test_id)
    VALUES ('6', TRUE, 8);

INSERT INTO answers (answer, test_id)
    VALUES ('12024', 9), ('18312', 9), ('13626', 9);

INSERT INTO answers (answer, type, test_id)
    VALUES ('9216', TRUE, 9);

INSERT INTO answers (answer, test_id)
    VALUES ('2', 10), ('4', 10), ('6', 10);

INSERT INTO answers (answer, type, test_id)
    VALUES ('9', TRUE, 10);

