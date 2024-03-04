# tao CSDL
Create Database if not exists demo01;
# xoa CSDL
# Drop database demo01;
# select csdl
use demo01;
# Tao bang
create table if not exists Student(
        id bigint ,
        name varchar(100) unique check(length(name) >= 6) not null,
        age int check(age > 0),
        sex bit default 1,
        classId int ,
        foreign key(classId) references classes(idClasses),
        constraint checkcustom_1 check(age>0),
        primary key(id)
);
# Xoas bang 
drop Table if exists student;

# Rang buoc 
Alter table Student
modify column id int primary key ;
Alter table Student
modify column name varchar(50) not null;

# them du lieu
INSERT INTO `firstdb`.`student` (`id`,`name`, `age`, `sex`) VALUES ('1','nguyeenx vawn A', '10', 0);
INSERT INTO `firstdb`.`student` (`id`,`name`, `age`, `sex`) VALUES ('2','nguyeenx vawn A', '12', 0);
INSERT INTO `firstdb`.`student` (`id`, `name`, `age`, `sex`, `classId`) VALUES ('3', 'asadc3', '1', b'0',null);
# vi du don hang
# userid va productid lam khoa chinh
# 2^32 vaf 2^32 // 2^32
