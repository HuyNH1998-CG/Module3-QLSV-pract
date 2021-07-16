create database quanlysinhvien;
use quanlysinhvien;
create table class(
classid int not null auto_increment primary key,
classname nvarchar(60) not null,
startdate date not null,
status bit
);
create table student(
studentid int not null auto_increment primary key,
studentname nvarchar(30) not null,
address nvarchar(50),
phone nvarchar(20),
status bit,
classid int not null,
foreign key (classid) references class (classid)
);
create table subject(
subid int not null auto_increment primary key,
subname nvarchar(30) not null,
credit tinyint not null default 1 check (credit >= 1),
Status bit default 1
);
create table mark(
markid int not null auto_increment primary key,
subid int not null,
studentid int not null,
mark float default 0 check (mark between 0 and 100),
examtimes tinyint default 1,
foreign key (subid) references subject(subid),
foreign key (studentid) references student(studentid)
);
