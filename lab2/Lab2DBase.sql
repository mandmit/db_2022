--Вибрати всі записи з таблиці "user"
--select * from "user";

--Вибрати одне поле rating з таблиці result
--select rating from result;

--Вибрати два поля rating та "day" з таблиці result та відсортований в зворотному порядку
--select rating, "day" from result order by rating desc;

--Вибрати одне поле rating з таблиці result які NOT NULL
--select rating from result where not rating isnull;

--Вибрати декілька полів title, budget_id з таблиці subject_area
--select title, budget_id from subject_area;

--Вибрати з таблиці "user" всі записи з ім'ям 'Faye'
--select * from "user" where "name" = 'Faye';

--Вибрати з таблиці "user" поле "surname" яке відсортовано в зворотньому порядку
--select surname From "user" Order by surname desc;

--Вибрати з таблиці "user" поле "surname" яке має в записі "name" = 'Susannah'
--select surname from "user" where "name" = 'Susannah';

--Вибрати максимальну ціну з таблиці "budget"
--select max(dollars) from budget;

--Вибрати максимальну ціну з таблиці "budget" в проміжку поля id від 25 до 30
--select max(dollars) from budget where id between 25 and 30;

--Вибрати мінімальну ціну з таблиці "budget" в проміжку поля id від 40 до 80
--select min(dollars) from budget where id between 40 and 80;

--Вибрати мінімальну ціну з таблиці "budget"
--select min(dollars) from budget;

--Вибрати з таблиці "user" всі записи які не з ім'ям 'Faye' та не з прізвищем 'Simakov'
--select "name", surname from "user" where not "name" = 'Faye' and not surname = 'Simakov';

--Вибрати мінімальну ціну з таблиці "budget" між id 15,22,54,100
--select min(dollars) From budget where id in (15,22,54,100);

--Вибрати максимальну ціну з таблиці "budget" між id 1,2,13,27,54,78,90 та полем id > 50
--select max(dollars) From budget where id in (1,2,13,27,54,78,90) and id > 50;

--Кількість записів в таблиці "user" з ім'ям
--select count("name") from "user";

--Вибрати всі записи з таблиці "budget" ціна яких менші за 5000
--select * from budget where dollars < 5000;

--Вибрати всі записи з таблиці "budget" ціна яких між 1500 та 3000 з полем id > 20
--select * from budget where dollars between 1500 and 3000 and id > 20;

--Кількість записів в таблиці "budget" з полем dollars більшим за ціну в 5000
--select count(dollars) from budget where dollars > 5000;

--Вибрати всі унікальні записи поля budget_id з таблиці subject_area
--select Distinct budget_id from subject_area;

--Вибрати мінімальну ціну з таблиці "budget" між id 4,21,25,45,99 та полем id < 50
--select min(dollars) From budget where id in (4,21,25,45,99) and id < 50;

--Вибрати всі унікальні записи поля budget_id з таблиці subject_area якщо поле title не починається з C та відсортована за полем budget_id
--select Distinct budget_id from subject_area where not title like 'C%' order by budget_id;

--Вибрати всі унікальні записи поля budget_id з таблиці subject_area та полем id > 50
--select Distinct budget_id from subject_area where id > 50;

--Вибрати та подивитися поле rating з таблиці result з записом user_id = 2
--select rating from result where user_id = 2;

--Вибрати всі унікальні записи поля budget_id з таблиці subject_area та полем id > 25 та відсортованими за полем budget_id
--select Distinct budget_id from subject_area where id > 25 order by budget_id;

--Вибрати всі записи з таблиці "budget" ціна яких між 1500 та 3000 або з полем id > 90
--select * from budget where dollars between 1500 and 3000 or id > 90;

--Вибрати та подивитися поле rating з таблиці result з проміжку поля user_id між 20 та 45 та полем rating в форматі 5._
--select rating from result where user_id between 20 and 45 and rating::varchar like '5._';

--Кількість записів в таблиці result з унікальним полем group_id та полем rating > 5
--select count(distinct group_id) from result where rating > 5;

--Вибрати мінімальне значення поля rating з таблиці result в проміжку з '2021-01-01' and '2021-02-01'
--select min(rating) from result where "day" between '2021-01-01' and '2021-02-01';

--Вибрати всі записи з таблиці result з полем user_id > 30 та полем rating < 5.0
--select * from result where user_id > 30 and rating < 5.0;

--Кількість записів в таблиці result з унікальним полем group_id між 43 та 94
--select count(distinct group_id) from result where group_id between 43 and 94;

--Вибрати всі записи з таблиці "budget" ціна яких між 4333 та 4500 або з полем id > 85
--select * from budget where dollars between 4333 and 4500 or id > 85;

--Вибрати всі записи з таблиці group з полем "name" = 'Champions' або з полем subject_area_id = 3
--select * from "group" where "name" = 'Champions' or subject_area_id = 3;

--Кількість записів в таблиці result з полем group_id з полем rating між 3 та 7
--select count(group_id) from result where rating between 3 and 7;

--Кількість записів в таблиці result з полем rating та полем group_id = 10
--select count(rating) from result where group_id = 10;

--Середня ціна з таблиці budget
--select avg(dollars) from budget;

--Максимальне поле запису в таблиці result з полем rating та полем group_id = 17
--select max(rating) from result where group_id = 17;

--Максимальне поле запису в таблиці result з полем rating та полем group_id = 17
--select min(rating) from result where group_id = 17;

--Мінімальний рейтинг поля rating з таблиці result в проміжку між '2021-02-01' and '2021-02-12'
--select min(rating) from result where "day" between '2021-02-01' and '2021-02-12'; 

--Максимальний рейтинг поля rating з таблиці result в проміжку між '2021-01-01' and '2021-01-12'
--select max(rating) from result where "day" between '2021-01-01' and '2021-01-12'; 

--Вибрати всі записи NOT NULL з таблиці subject_area
--select * from subject_area where NOT title ISNULL;

--Вибрати всі записи з таблиці result які не входять в діапазон поля "day" '2021-06-01' and '2021-09-01' та відсортованим за цим полем
--select * from result where not "day" between '2021-06-01' and '2021-09-01' order by "day";

--Середня ціна з таблиці budget якщо ціна більша за 2500 та менша за 6000 або id > 55
--select avg(dollars) from budget where dollars > 2500 and (dollars < 6000 or id > 55);

--Вибрати всі записи з таблиці result в проміжку від 2020-03-10 до 2022-01-01
--select * from result where "day" > '2020-03-10' AND "day" < '2022-01-01';

--Середнє значення з поля rating з таблиці result між днем '2021-02-04' та '2021-05-03'
--select avg(rating) from result where "day" between '2021-02-04' and '2021-05-03';

--Вивести середню оцінку з таблиці result в проміжку з 2020-05-12 до 2020-07-12
--select avg(rating) from result where "day" > '2020-05-12' and "day" < '2020-07-12';

--Вивести середню оцінку з таблиці result поля group_id = 15
--select avg(rating) from result where group_id = 15;

--Вивести середню оцінку з таблиці result в проміжку поля group_id з 2 до 7
--select avg(rating) from result where group_id between 2 and 7;

--Вибрати всі записи з таблиці "user" поля які "name" починаються на W або поле surname на K
--select * from "user" where "name" Like 'W%' or surname like 'K%';

--Вибрати rating, "day", user_id з таблиці result якщо поле rating не починається з 7 та відсортовано за полем rating
--select rating, "day", user_id from result where not rating::varchar like '7%' order by rating;

--Максимальне поле запису в таблиці result з полем rating та полем group_id = 24
--select min(rating) from result where group_id = 24;

--Вибрати rating, "day", user_id з таблиці result якщо поле rating не між 7 та 10 та відсортовано за полем rating
--select rating, "day", user_id from result where not rating between 7 and 10 order by rating;

--Вибрати rating, "day", user_id з таблиці result якщо поле rating не 1,4,7,9 та відсортовано за полем rating
--select rating, "day", user_id from result where not rating in (1,4,7,9) order by rating;

--Вибрати та подивитися поле rating з таблиці result з записом date = '2021-02-13'
--select rating from result where "day" = '2021-02-13';

--Вибрати та подивитися поле rating з таблиці result з записом date '2021-02-13','2021-02-16','2021-05-21'
--select rating from result where "day" in ('2021-02-13','2021-02-16','2021-05-21');

--Вибрати всі записи поля "name" NOT NULL з таблиці "user"
--select * from "user" where NOT "name" ISNULL;

--Вибрати всі записи з таблиці subject_area з полем title яке починаються на C та полем budjet_id більше за 20
--select * from subject_area where title like 'C%' And budget_id > 20;

--Вибрати записи budget_id, title з таблиці subject_area з полем title яке містить в собі fa або полем budjet_id меншим за 50 та відсортованим за полем budget_id
--select budget_id, title from subject_area where budget_id < 50 or title like '%fa%' order by budget_id;

--Вибрати поле surname з таблиці "user" яке починається на C або c та всередині слова є s
--select surname from "user" where surname like '%s%' and surname ilike 'c%';

--Вибрати з таблиці "user" поле "surname" в якій запис "name" починається на S
--select surname, "name" from "user" where "name" like 'S%';

--Вибрати поле "name", surname з таблиці "user" яке починається на T та складається з 5 символів
--select "name", surname from "user" where "name" like 'T%' and "name" like '_____';

--Вибрати поле "name" з таблиці "user" якщо поле surname починається з W та може містити в собі n чи поле "name" починається з M
--select "name" from "user" where surname like 'W%' and (surname like '%n%' or "name" like 'M%');

--Вибрати поле "name" з таблиці "user" якщо поле surname починається з T та може містити в собі u чи поле "name" містить в собі n
--select "name" from "user" where surname like 'T%' and (surname like '%u%' or "name" like '%n%');

--Вибрати поле "name" з таблиці "user" якщо поле surname починається з T та може містити в собі u чи поле "name" містить в собі n та відсортованим в зворотньому порядку
--select "name" from "user" where surname like 'T%' and (surname like '%u%' or "name" like '%n%') order by "name" desc;

--Вибрати поля rating, "day" з таблиці result в проміжку з дат '2020-02-01' and '2021-01-01'
--select rating, "day" from result where "day" between '2020-02-01' and '2021-01-01';

--Вибрати поля rating, "day" з таблиці result в проміжку з дат '2020-02-01' and '2021-01-01' та поле rating > 5
--select rating, "day" from result where "day" between '2020-02-01' and '2021-01-01' and rating > 5;

--Вибрати поля rating, "day", user_id з таблиці result якщо поле user_id > 20 та поле rating < 4
--select rating, "day", user_id from result where user_id > 20 and rating < 4;

--Вибрати мінімальну дату з таблиці result
--select min("day") from result;

--Вибрати записи "day","rating","user_id" з таблиці result з group_id = 54
--select "day","rating","user_id" from result where group_id = 54;

--Вибрати записи "day","rating","user_id" з таблиці result з group_id з 23,56,60,63
--select "day","rating","user_id" from result where group_id in (23,56,60,63);

--Вибрати записи "day","rating","user_id" з таблиці result з group_з 1,2,32,43,100 та відсортованими за полем "user_id"
--select "user_id","day","rating" from result where group_id in (1,2,32,43,100) order by "user_id";

--Вибрати всі записи з таблиці budget де поле dollars між 1333 та 5000
--select * from budget where dollars BETWEEN 1333 and 5000;

--Вибрати всі записи з таблиці group які задовольняють масив для поля subject_area_id
--select * from "group" where subject_area_id in (3,32,42,76);

--Вибрати всі записи з таблиці result які задовольняють умову 7._
--select * from result where rating::varchar like '7._';

--Вибрати rating, "day", user_id та сортувати всі записи з таблиці result в зворотньому порядку за полем rating '3._'
--select rating, "day", user_id from result where rating::varchar like '3._' ORDER by rating DESC;

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

--Вибрати всі записи з таблиці budget поле dollars яке закінчується 25
--select * from budget where dollars::varchar like '%25';

--Вибрати всі поля з таблиці budget які задовольняють умову поля dollars 23___
--select * from budget where dollars::varchar like '23___';

--Вибрати та сортувати всі записи з таблиці group в зворотньому порядку
--select * from "group" where "name" like 'C%' ORDER by "name" DESC;

--Вибрати та сортувати записи "name", surname з таблиці "user" в прямому порядку
--select "name", surname from "user" where "name" like 'R%' order by "name", surname;

--Вибрати записи "name", rating з таблиць "user", result (декартовий добуток)-так погано робити!
--select "name", rating from "user", result;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивились поля за правилом "user".id = result.user_id
-- select us.name, us.surname, r.group_id
-- from "user" as us, result r
-- where us.id = r.user_id;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивитись поля за правилом "user".id = result.user_id та полем result.group_id = 1 тобто подивитись на людей які в першій групі
-- select us.name, us.surname, r.group_id
-- from "user" as us
-- JOIN result r
-- ON us.id = r.user_id
-- where r.group_id = 1;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивитись поля за правилом "user".id = result.user_id та полем result.group_id в 2,6,23,65,78
-- select r.group_id, us.name, us.surname
-- from "user" as us
-- JOIN result r
-- ON us.id = r.user_id
-- where r.group_id in (1,6,23,65,78)
-- order by group_id;

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id
-- select g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id;

--Вибрати з таблиці "user" поля name та surname і з таблиці result поле group_id та подивитись поля за правилом "user".id = result.user_id та полем result.group_id = 4 тобто подивитись на людей які в першій групі
-- select us.name, us.surname, r.group_id
-- from "user" as us
-- JOIN result r
-- ON us.id = r.user_id
-- where r.group_id = 4;

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id де поле sa.budget_id може бути (2,3,23,33) і відсортовано за полем r.user_id
-- select r.user_id, sa.budget_id, g.name, r.rating, r.day, sa.title
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id
-- where sa.budget_id in (2,3,23,33) order by r.user_id;

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 5 та r.rating < 7 або r.rating починається на 2.
-- select g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id
-- where (r.rating > 5 and r.rating < 7) or r.rating::varchar like '2._';

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 2 та r.rating < 3 або r.rating починається на 5. а також відсортовані за полем "day"
-- select r.day, r.user_id, sa.budget_id, g.name, r.rating, sa.title 
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id
-- where (r.rating > 2 and r.rating < 3) or r.rating::varchar like '5._' order by r.day;

--Вибрати записи з полями r.rating, r.user_id, r.day з таблиць result, "user" які зв'язані полями result.user_id = "user".id
-- select r.rating, r.user_id, r.day
-- from result as r
-- JOIN "user" As u
-- ON r.user_id = u.id;

--Вибрати записи з полями r.rating, r.user_id, u.name, u.surname, r.day з таблиць result, "user" які зв'язані полями result.user_id = "user".id відсортовані за полем r.rating та полем u."name" яке починається з літери M
-- select r.rating, r.user_id, u.name, u.surname, r.day
-- from result as r
-- JOIN "user" As u
-- ON r.user_id = u.id
-- where u."name" like 'M%' order by r.rating;

--Вибрати записи з полями r.rating, r.user_id, r.day з таблиць result, "user" які зв'язані полями result.user_id = "user".id за правилом r.rating > 8 відсортованим полем r.rating
-- select r.rating, r.user_id, r.day
-- from result as r
-- JOIN "user" As u
-- ON r.user_id = u.id
-- where r.rating > 8 order by r.rating;

--Вибрати записи з полями g.name, r.rating, r.user_id, r.day, sa.title, sa.budget_id з таблиць result, "group", subject_area які зв'язані полями result.group_id = group.id та subject_area.id = group.subject_area_id за правилом r.rating > 5 та r.rating < 6 або r.rating починається на 1. а також відсортовані за полем "day"
-- select r.day, r.user_id, sa.budget_id, g.name, r.rating, sa.title 
-- from result as r
-- JOIN "group" As g
-- ON r.group_id = g.id
-- Join subject_area as sa
-- On sa.id = g.subject_area_id
-- where (r.rating > 5 and r.rating < 6) or r.rating::varchar like '1._' order by r.day;

--Вибрати унікальні записи budget_id з полями budget_id, title з таблиці subject_area з полем title = 'Computer Science'
--select distinct budget_id, title from subject_area where title = 'Computer Science';

--Вибрати записи b.dollars sa.title з максимальним полем b.dollars з таблиць budget, subject_area які зв'язані полями budget.id = subject_area.budget_id
-- select max(b.dollars), sa.title
-- from "budget" as b
-- JOIN subject_area sa
-- ON b.id = sa.budget_id
-- group by sa.title;

--Вибрати записи з полями sa.title, g.name, b.dollars з таблиць budget, "group", subject_area які зв'язані полями b.id = sa.budget_id та sa.id = g.subject_area_id за правилом dollars > 4999 відсортовані за ціною
-- select sa.title, g.name, b.dollars
-- from "group" as g
-- join subject_area sa
-- on sa.id = g.subject_area_id
-- join budget b
-- on b.id = sa.budget_id
-- where dollars > 4999 order by dollars;