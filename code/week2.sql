-- 데이터베이스 생성
create database ut;

-- 테이블 확인
table animals;
select * from animals;

-- 테이블 생성
create table animals(
	id bigserial, 
	name varchar(20), 
	age integer, 
	kind varchar(20), 
	dob date, 
	location varchar(50)
);

-- 데이터 삽입
insert into animals (name, age, kind, dob, location)
values ('tiger1', 45, 'tiger', '2010-10-10', 'Seoul, Korea'), 
	('Pooh', 13, 'bear', '2020-04-12', 'England'), 
	('Togo', 15, 'dog', '2015-06-16', 'USA'), 
	('Huchu', 5, 'dog', '2021-07-05', 'Korea'), 
	('Mangdeol', 4, 'goschemdochi', '2019-05-30', 'Korea');

