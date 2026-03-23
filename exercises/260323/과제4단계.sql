-- 2126086 김희곤
-- 과제 4단계

-- 동아리 임원 테이블 생성
CREATE TABLE club_officers (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(11),
    joining_date DATE,
    position VARCHAR(20)
);

-- 동아리 일반멤버 테이블 생성
CREATE TABLE club_members (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(11),
    joining_date DATE
);

-- 임원 데이터 삽입
INSERT INTO club_officers (name, phone_number, joining_date, position) VALUES
('김희곤', '01012345678', '2023-03-01', '회장'),
('이영희', '01022223333', '2023-03-01', '부회장'),
('박철수', '01044445555', '2023-09-01', '총무'),
('최지우', '01066667777', '2024-03-02', '기획'),
('정민수', '01088889999', '2024-03-02', '홍보');

-- 일반멤버 데이터 삽입
INSERT INTO club_members (name, phone_number, joining_date) VALUES
('강하늘', '01011112222', '2025-03-02'),
('조세호', '01033334444', '2025-03-05'),
('한소희', '01055556666', '2025-03-10'),
('김남준', '01077778888', '2025-03-12'),
('이지은', '01099990000', '2025-03-15');

-- 데이터 전체 조회
SELECT * FROM club_officers;
SELECT * FROM club_members;

-- 정렬
SELECT * FROM club_members 
ORDER BY joining_date DESC;

-- 조건 검색
SELECT name, position 
FROM club_officers 
WHERE position = '회장';