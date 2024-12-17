
select * from people;

update people set email = 'test@gmail.com' where id = 1;

insert into people(id, first_name, last_name, email, gender, age, language)
values (51, 'Adi', 'Bekov', 'adi@gmail.com', 'Male', 18, 'English');

delete from people where id = 10;
select count(*) as total_people from people;
select avg(age) as avg_age from people;
select max(age) as max_age from people;
select sum(age) as sum_age from people;
select min(age) as min_age from people;
select gender, round(avg(age)) from people group by gender;
select first_name, age from people where language = 'English';
select count(*) from people where language = 'Kazakh';
select id, last_name, email from people where gender = 'Female';
select concat(first_name, last_name) as ful_name, gender, age from people where gender = 'Male' and age<24;
select count(id) from people where first_name ilike 'A%';
select * from people order by email desc;
select * from people offset 5 limit 20;
select language, count(*) from people group by language;
select language, avg(age) from people group by language having count(*) >2;
select count(*) from people where email like '%.com';
select language, count(language) as count_language  from people
                                                    where gender = 'Female'
                                                    group by language
                                                    order by count_language desc limit 1;
update people set language = 'French' where age between 14 and 21;
select * from people where gender = 'Male' and language in('Tamil', 'Kazakh', 'Nepali', 'Russian');
select language from people group by language;
select * from people where length(last_name) = 7 order by id;
select * from people where language not in ('French');
select * from people where email like  '%.com' ORDER BY age asc limit 5;
select * from people where age >18 and (email like '%.com' or email like '%uk');
select * from people where age<24 or age>31;
select language, count(*) from people group by language having count(*)=1;
select * from people where (first_name like '%a%' or last_name like '%a%') and age between 19 and 55;
select id, first_name, email, age from people order by age desc;
delete from people where age>23;












