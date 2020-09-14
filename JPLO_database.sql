 create database JapaneseLanguageOnline
 use JapaneseLanguageOnline
 create table phanquyen
 (
 MaLTK int identity(1,1) primary key,
	TenLTK nvarchar(30) NULL,

 )
 create table student
 (
 studentid int identity(1,1) primary key,
 name nvarchar not null,
 sdt char not null,
 email varchar not null,
 MaLTK int references phanquyen(MaLTK),
 )
 create table teacher
 (
 teacherid int identity(1,1) primary key,
 name nvarchar not null,
 sdt char not null,
 email varchar not null,
 MaLTK int references phanquyen(MaLTK),
 )
 create table dictionary
 (
 dicid int identity(1,1) primary key,
 kanji varchar not null,
 hiragana varchar not null,
 means nvarchar not null,
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table lesson
 (
 lessonid int identity(1,1) primary key,
 name nvarchar not null,
 description nvarchar not null,
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table smallless 
 (
 smalless int identity(1,1) primary key,
 lessonid int references lesson(lessonid),
 name varchar,
 img image,--hinh bai hoc
 exem nvarchar,
 youtube  varchar,
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table exam
 (
 lessonid int references lesson(lessonid),
 ques nvarchar not null,
 ans nvarchar not null, 
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table achi
 (
  chiid int identity(1,1) primary key,
 ratings int,
  studentid int references student(studentid)
 )
