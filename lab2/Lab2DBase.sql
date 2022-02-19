--Вибрати всі записи з таблиці "user"
--select * from "user";

--Вибрати з таблиці "user" всі записи з ім'ям 'Faye'
--select * from "user" where "name" = 'Faye';

--Вибрати з таблиці "user" поле "surname" яке має в записі "name" = 'Susannah'
--Select surname From "user" where "name" = 'Susannah';

--Вибрати максимальну ціну з таблиці "budget"
--Select max(dollars) From budget;

--Вибрати мінімальну ціну з таблиці "budget"
--Select min(dollars) From budget;

--Кількість записів в таблиці "user" з ім'ям
--Select count("name") from "user";

--Вибрати всі записи з таблиці "budget" ціна яких менші за 5000
--select * from budget where dollars < 5000;

--Кількість записів в таблиці "budget" з полем dollars більшим за ціну в 5000
--Select count(dollars) from budget where dollars > 5000;

--Вибрати всі унікальні записи поля budget_id з таблиці subject_area
--Select Distinct budget_id from subject_area;

--Вибрати та подивитися поле rating з таблиці result з записом user_id = 2
--Select rating from result where user_id = 2;

--Вибрати всі записи з таблиці result з полем user_id > 30 та полем rating < 5.0
--select * from result where user_id > 30 and rating < 5.0;

--Вибрати всі записи з таблиці group з полем "name" = 'Champions' або з полем subject_area_id = 3
--select * from "group" where "name" = 'Champions' or subject_area_id = 3;

--Середня ціна з таблиці budget
--Select avg(dollars) from budget;

--Вибрати всі записи NOT NULL з таблиці subject_area
--Select * from subject_area where NOT title ISNULL;

--Вибрати всі записи з таблиці result в проміжку від 2020-03-10 до 2022-01-01
--select * from result where "day" > '2020-03-10' AND "day" < '2022-01-01';

--Вивести середню оцінку з таблиці result в проміжку з 2020-05-12 до 2020-07-12
--select avg(rating) from result where "day" > '2020-05-12' AND "day" < '2020-07-12';

--Вибрати мінімальну дату з таблиці result
--select min("day") from result;

--Вибрати записи "day","rating","user_id" з таблиці result з group_id = 54
--select "day","rating","user_id" from result where group_id = 54;

--Вибрати всі записи з таблиці budget де поле dollars між 1333 та 5000
--select * from budget where dollars BETWEEN 1333 and 5000;

--Вибрати всі записи з таблиці group які задовольняють масив для поля subject_area_id
--select * from "group" where subject_area_id in (3,32,42,76);

--Вибрати всі записи з таблиці result які задовольняють умову 7._
--select * from result where rating::varchar like '7._';

--Вибрати поля "rating", "day" з таблиці result які задовольняють умову 2020-0_-0_
--select "rating", "day" from result where "day"::varchar like '2020-0_-0_';

--Вибрати всі записи з таблиці budget поле dollars яке закінчується двійкою
--select * from budget where dollars::varchar like '%2';

--Вибрати всі значення записи з таблиці "user" де поле surname починається з L
--select * from "user" where surname like 'L%';

--Вибрати всі значення записи з таблиці "user" де поле name починається з y або Y
--select * from "user" where "name" ILIKe 'y%';

--Вибрати всі записи з таблиці subject_area поле title яке закінчується l (cast _ as text)
--select * from subject_area where cast(title as text) like '%l';

--Вибрати та сортувати всі записи з таблиці group в зворотньому порядку
--SELECT * from "group" where "name" like 'C%' ORDER by "name" DESC;

--Вибрати та сортувати записи "name", surname з таблиці "user" в прямому порядку
--select "name", surname from "user" where "name" like 'R%' order by "name", surname;

--Вибрати записи "name", rating з таблиць "user", result (декартовий добуток)-так погано робити!
--select "name", rating from "user", result;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивились поля за правилом "user".id = result.user_id
-- select us.name, us.surname, r.group_id
-- from "user" as us, result r
-- where us.id = r.user_id;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивились поля за правилом "user".id = result.user_id та полем result.group_id = 1 тобто подивились на людей які в першій групі
-- select us.name, us.surname, r.group_id
-- from "user" as us
-- JOIN result r
-- ON us.id = r.user_id
-- where r.group_id = 1;

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id
-- select g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id;

