create database courses;
use courses;
create table students(id int auto_increment primary key,name varchar(10) ,cid int,city varchar(10));
create table course(ccid int not null  auto_increment primary key,cid int,course varchar(10));
drop table course;
select * from   students;
select * from course;
insert into students(name,cid,city) values('raj',101,'Thanjavur'),('akil',102,'trichy'),('chris',103,'karur'),('dinesh',104,'selam'),    
('ajay',101,'sivakasi'),('kavi',102,'trichy'),('danial',103,'karur'),('vel',104,'chennai'), 
('rajesh',101,'Thanjavur'),('xavier',102,'chennai'),('vino',103,'karur'),('deena',104,'selam'),    
('rahul',101,'kovai'),('boss',102,'ooty'),('kabil',103,'karur'),('arul',104,'selam'),    
('suraj',101,'ooty'),('amar',102,'trichy'),('christober',103,'kadalur'),('suresh',104,'selam'); 
select * from students order by cid;
insert into course(cid,course) values(101,'MBA'),(102,'MCA'),(103,'ME'),(104,'Msc');
select students.id,students.name,students.city,course.course,course.cid from students 
inner join course on students.cid=course.cid where course  in('MBA' , 'MCA');
select * from students where name like '%a';
select * from students order by id limit 0,3;
select  count(city) from students;
select count(distinct city) from students;
select city from students;
select city, (
case
  when city='thanjavur' then 50
  when city='trichy' then 100
  when city= 'selam' then 200
   when city='karur' then 250
  when city='kovai' then 300
  when city= 'chennai' then 400
  else 0
  end  ) as amount from students;
create table attendance(aid int not null auto_increment primary key,id int,ADATE date,ASTATUS varchar(10));
drop table attendance;
insert into attendance(id,ADATE,ASTATUS) values(1,'2020-01-01','present'),(2,'2020-01-01','present'),(3,'2020-01-01','present'),
(4,'2020-01-01','abesent'),(5,'2020-01-01','present'),(6,'2020-01-01','present'),
(7,'2020-01-01','present'),(8,'2020-01-01','present'),(9,'2020-01-01','absent'),
(10,'2020-01-01','present'),(11,'2020-01-01','abesent'),(12,'2020-01-01','present'),(13,'2020-01-01','present'),
(14,'2020-01-01','abesent'),(15,'2020-01-01','present'),(16,'2020-01-01','present'),
(17,'2020-01-01','present'),(18,'2020-01-01','present');
select * from attendance;
select * from course;
select students.id,students.name,course.cid,course.course ,attendance.ADATE,attendance.ASTATUS
from students
inner join course on students.cid=course.cid
inner join attendance on students.id=attendance.id;
select id,count(adate) as working from attendance  group by id;
select id,count(ADATE) as working,count(if(ASTATUS='present',1,null)) as present from attendance group by id;
create table mobileshop(id int auto_increment primary key,mobile varchar(20),price int);
insert into mobileshop(mobile,price) values('nokia',3000),('samsung',7000),('real me',8000),('oppo',7500),('vivo',10000);
select * from mobileshop;
/*
create table mobile_price(mid int auto_increment primary key,id int,old_price int,new_price int);
select * from mobile_price;
create trigger before_update_mobile
before update on mobileshop
for each row
begin
insert into mobile_price(id,old_price,new_price) values(old.id,old.price,new.price);
end$$ */
select * from mobile_price;