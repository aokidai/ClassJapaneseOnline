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
 UserName nvarchar(30) NOT NULL,
 Password nvarchar(30) NOT NULL,
 )
 create table teacher
 (
 teacherid int identity(1,1) primary key,
 name nvarchar not null,
 sdt char not null,
 email varchar not null,
 MaLTK int references phanquyen(MaLTK),
 UserName nvarchar(30) NOT NULL,
 Password nvarchar(30) NOT NULL,
 )
 create table admin
 (
  adminid int identity(1,1) primary key,
  name nvarchar not null,
  MaLTK int references phanquyen(MaLTK),
  UserName nvarchar(30) not null,
  Password nvarchar(30) not null,
 )
 create table dictionary
 (
 dicid int identity(1,1) primary key,
 kanji varchar not null,
 hiragana varchar not null,
 means nvarchar not null,
 teacherid int references teacher(teacherid),
 )
 -----------------------
 create table lesson
 (
 lessonid int identity(1,1) primary key,
 name nvarchar not null,
 description nvarchar,
 teacherid int references teacher(teacherid),
 )
 create table exam
 (
 examid int identity(1,1) primary key,
 lessonid int references lesson(lessonid),
 ques nvarchar not null,
 ans nvarchar not null, 
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table smallless 
 (
 smalless int identity(1,1) primary key,
 lessonid int references lesson(lessonid),
 name varchar,
 img image,--hinh bai hoc
 exem int references exam(examid),
 youtube  varchar,
 teacherid int references teacher(teacherid),
 studentid int references student(studentid),
 )
 create table achi
 (
  chiid int identity(1,1) primary key,
  ratings int,
  studentid int references student(studentid)
 ) 
 create table dangky
 (
 MaDK int identity(1,1) primary key,
 lessonid int references lesson(lessonid),
 examid int references exam(examid),
 smalless int references smallless(smallless),
 chiid int references achi(chiid),
 studentid int references student(studentid),
 )
 alter table student add constraint check checksdt1 check (len(sdt)=10)
 alter table teacher add constraint check checksdt2 check (len(sdt)=10)
 alter table student add constraint check pass1 check (len(Password)<8)
 alter table teacher add constraint check pass2 check (len(Password)<8)
 alter table admin add constraint check pass3 check (len(Password)<8)

 insert into phanquyen values('Admin')
 insert into phanquyen values('GiaoVien')
 insert into phanquyen values('HocVien')

 insert into student values('Trần Tiến Đạt', '0123456789', 'dattt@gamil.com',3,'hvdat',123)
 insert into student values('Cao Văn Tâm', '0126789549', 'tamtt@gamil.com',3,'hvtam',123)

 insert into teacher values('Trần Văn Cao','9638520147','tvc@gv.com',2,'gvtvc',123)

 insert into admin values('Aoki Daisuke',1,'Admin', 123)

 insert into lesson values('Hirana', '', 1)
 insert into lesson values('Katakana', '', 1)
 insert into lesson values('Less 1', '', 1)
