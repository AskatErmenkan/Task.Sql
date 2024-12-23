-- 1 Таблицадан машиналардын бренд, модель жана бааларын чыгар.
        select c.brand, c.model, c.price from cars c;
--2 Таблицадан бардык машиналардын санын чыгар.
        select c.count from cars c;
--3 Hyundai брендиндеги бардык машиналарды чыгар.
        select * from cars where brand = 'Hyundai';
-- 4 Бардык кызыл жана кок машиналарды чыгар
        select * from cars where color ilike 'red' or color ilike 'blue';
-- 5 Бардык 2000-жылдан 2010-жылга чейинки чыгарылган машиналарды чыгар
        select * from cars where year_of_issue between 2000 and 2010;
-- 6 Chevrolet брендинде канча машина бар экенин чыгар
        select count(*) as Chevrolet_count from cars where brand = 'Chevrolet';
-- 7 Машиналардын чыгарылган жылдарынын орточо маанисин чыгар
        select avg(year_of_issue) as average_year from cars;
-- 8 Audi, Toyota, Kia жана Ford брендиндеги машиналдарды чыгар
        select * from cars where brand in ('Audi','Toyota', 'Kia', 'Ford');
-- 9 Модели Т менен башталган машиналарды чыгар
        select * from  cars where model like 'T%';
-- 10 Модели “е” менен буткон машиналарды чыгар
        select * from  cars where model like '%e';
-- 11 Бренди 5 символдон турган машиналарды чыгар
        select * from cars where length(brand) = 5;
-- 12 Бренди Mercedes-Benz болгон машиналардын жалпы суммасын чыгар
        select 'Mercedes Benz' as brand, count(*) as Mercedes_count from cars where brand = 'Mercedes-Benz';
-- 13 Эн кымбат жана эн арзан машинаны чыгар
        select * from cars where price =(select min(price) from cars);
        select * from cars where price =(select max(price) from cars); -- TODO 1 запрос менен ЧЫГАРА АЛБАЙ КОЙДУМ
-- 14 TOYOTA дан башка машиналарды чыгар
        select * from cars c where c.brand not ilike 'Toyota';
-- 15 Эн кымбат 10 машинаны чыгар
        select * from cars order by price desc limit 10;
-- 16 Эн жаны машиналардын 5 тен 15 ке чейинкисин чыгар
        select * from cars order by year_of_issue desc offset 4 limit 15;
-- 17 1995 - жылдан 2005- ке чейинки машиналарадан башкаларын чыгар
        select * from cars order by year_of_issue > 1995 and  year_of_issue<2005;
-- 18 Бир тустогу саны эн коп болгон машиналарды чыгар
        select color, count(*) as count
            from cars
                group by color
                    order by count desc
                        limit 1;








