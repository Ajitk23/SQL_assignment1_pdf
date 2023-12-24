use assignments;

-- Que : 1

create table skills(
id int,
technology varchar(30)
);

insert into skills values(1,"DS"),
(1,"Tableau"),
(1,"SQL"),
(2,"R"),
(2,"PoweBI"),
(1,"Python");

select * from skills;

-- drop table skills;

-- list the candidates which posseses DS,Tableau,python and sql

select id from skills
where technology in ( "DS","Tableau","Python","SQL");
-- it will give all id's that posseses above technology

select distinct id from skills
where technology in ( "DS","Tableau","Python","SQL");
-- it will give only one value that have all the above technology



-- Que : 2

use assignments;

create table product_info(
product_id int,
Product varchar(25));

insert into product_info values(1001,"Blog"),(1002,"Youtube"),(1003,"Education");

select * from product_info;


create table product_info_likes(
user_id int,
product_id int,
liked_date date);

insert into product_info_likes values(1,1001,"2023-08-19"),(2,1003,"2023-08-18");

select * from product_info_likes;

select product_info.product_id
from product_info
left join product_info_likes on
product_info_likes.product_id=product_info.product_id
where liked_date is null;
-- it will give us product_id 1002 which has no likes.