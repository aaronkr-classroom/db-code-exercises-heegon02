-- 2126086 김희곤
-- 260323

/*
[Entities / 개체]
- Professor

[Properties / 속성]
- id (BIGSERIAL)
- name (VARCHAR(30))
- dept (VARCHAR(50))
- salary (NUMERIC)
- salary_level (NUMERIC)
- hire_date (DATE)
*/

CREATE table prof (
	id bigserial, 
	name varchar(30), 
	dept varchar(50), 
	salary numeric, 
	salary_level numeric, 
	hire_date date -- 'yyyy-dd-mm'
);

table prof;

-- 데이터 삽입하기
insert into prof(name, dept, salary, salary_level, hire_date)
values 
	('김정운', '컴퓨터공학과', 100000, 2, '1998-12-30'),
	('김운정', '전기과', 70000, 2, '1998-11-30'),
	('김정은', '전자과', 80000, 2, '1998-10-30'),
	('김이박', '간호학과', 90000, 2, '1998-09-30'),
	('김주애', '소프트웨어학과', 110000, 2, '1998-07-30');

-- 데이터 검색하기

-- 테이블 전체 선택
select * from prof;
table prof;

-- 테이블 특정 속성 선택
select name, salary from prof;

-- 테이블 속성 선택 및 정렬
select name, salary from prof order by salary desc; 

-- 테이블 조건문 사용
select name, salary from prof where salary > 90000;

select name, salary from prof where name like '김정%'; --PostgreSQL ILIKE 대/소문자 상관 없음. 

select name, dept from prof
	where dept like '%공%'
	order by dept desc;

select name, salary from prof where salary between 70000 and 90000;
