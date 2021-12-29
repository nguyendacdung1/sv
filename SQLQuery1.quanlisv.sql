
use tongket
go

--Class
create table Class1(
      ID int primary key identity,
	  ClassName char(100) 
)
go
create table Subjects1(
       ID int primary key identity,
       SubjectName nvarchar(100),
	   status int  --1:đang học || 0: không học
)
go
--student
create table Student1(
       ID int primary key identity,
	   StudentName nvarchar(200),
	   
)
go
create table Student_Class(
        StudentID int,
		ClassID int,
		foreign key (StudentID) references Student1(ID),
		foreign key (ClassID) references Class1(ID)
)
go
Create table Student_Subject(
         StudentID int,
		 SubjectID int,
		 foreign key (StudentID) references Student1(ID),
		 foreign key (SubjectID) references Subjects1(ID)
)
go
--insert
insert into Class1 values ( 1, 'T2109M'),
                         ( 2, 'T2108M')
go
insert into Subjects1 value(1, N'HTML cơ bản đến nâng cao'),
                          (2, N'SQL')
go
insert into Student1 value (1, N'Nguyễn Đắc Dũng'),
                          (2, N'Nguyễn Hải Tú'),
						  (3, N'Hoàng Duy Phong' ),
						  (4, N'Nguyễn Hoàng Thống'),
select*from Student1
where ClassID = 1
go
--tìm theo tên
select*from Student1
where StudentName = N'Nguyễn Đắc Dũng'
go

                           
