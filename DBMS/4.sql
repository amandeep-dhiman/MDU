CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE DEPARTMENTS(
    ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE EMP(
    ID INT PRIMARY KEY,
    FIRSTNAME VARCHAR(50) NOT NULL,
    MIDDLENAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT NOT NULL CHECK(AGE > 18),
    DEPT INT,
    BASE_SALARY INT NOT NULL,
    BONUS INT,
    TOTAL_SALARY INT NOT NULL,
    FOREIGN KEY (DEPT) REFERENCES DEPARTMENTS(ID)
);