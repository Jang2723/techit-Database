-- 그냥 CREATE TABLE
CREATE TABLE student (
    id INTEGER,
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    email VARCHAR(64),
    admitted INTEGER
);

-- NOT NULL - 컬럼에 NULL이 들어올 수 없4다.
DROP TABLE student;
CREATE TABLE student (
     id INTEGER,
     -- 컬럼을 만들면서 뒤에 제약사항을 넣어준다.
     first_name VARCHAR(64) NOT NULL,
     last_name VARCHAR(64) NOT NULL,
     email VARCHAR(64),
     admitted INTEGER
);

-- UNIQUE - 각 레코드의 해당 컬럼의 값이 고유해야 한다.
DROP TABLE student;
CREATE TABLE student (
     id INTEGER,
     first_name VARCHAR(64) NOT NULL,
     last_name VARCHAR(64) NOT NULL,
     email VARCHAR(64) UNIQUE,
     admitted INTEGER
);

-- PRIMARY KEY (AUTOINCREMENT)
DROP TABLE student;
CREATE TABLE student (
     id INTEGER PRIMARY KEY AUTOINCREMENT, -- implicit NOT NULL
     first_name VARCHAR(64) NOT NULL,
     last_name VARCHAR(64) NOT NULL,
     email VARCHAR(64) UNIQUE,
     admitted INTEGER
);
-- INSERT INTO student(last_name, email, admitted)
-- VALUES ('park', 'edujeeho@gmail.com', 1990);
