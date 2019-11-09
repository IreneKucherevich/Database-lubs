CREATE TABLE DEPT
       (DEPTNO NUMBER(2)
             PRIMARY KEY,
	DEPTNAME VARCHAR2(50)
             NOT NULL,  
	DEPTADDR VARCHAR2(50));


INSERT INTO DEPT VALUES
	(10, 'ACCOUNTING',   'NEW YORK');
INSERT INTO DEPT VALUES 
        (20, 'RESEARCH',     'DALLAS');
INSERT INTO DEPT VALUES
	(30, 'SALES',        'CHICAGO');
INSERT INTO DEPT VALUES
	(40, 'OPERATIONS',   'BOSTON');
	


CREATE TABLE EMP
       (EMPNO NUMBER(4)
             PRIMARY KEY,
	EMPNAME VARCHAR2(30)
             NOT NULL, 
        BIRTHDATE DATE, 
        MANAGER_ID NUMBER(4) 
	     REFERENCES EMP(EMPNO));

INSERT INTO EMP VALUES
    (7790, 'JOHN KLINTON',    to_date('9-07-1980', 'dd-mm-yyyy'), NULL);

INSERT INTO EMP VALUES
    (7499, 'ALLEN',           to_date('20-2-1961','dd-mm-yyyy'), 7790);
INSERT INTO EMP VALUES
    (7521, 'WARD',            to_date('22-2-1958','dd-mm-yyyy'), 7790);
INSERT INTO EMP VALUES
    (7566,'JONES',            to_date('2-4-1973','dd-mm-yyyy'), 7790);
INSERT INTO EMP VALUES
    (7789, 'ALEX BOUSH',      to_date('21-09-1982', 'dd-mm-yyyy'), 7790);
INSERT INTO EMP VALUES
    (7369, 'SMITH',           to_date('17-12-1948','dd-mm-yyyy'), 7789);
INSERT INTO EMP VALUES
    (7654,'JOHN MARTIN',      to_date('28-9-1945','dd-mm-yyyy'), 7789);
INSERT INTO EMP VALUES
    (7698,'RICHARD MARTIN',   to_date('1-5-1981','dd-mm-yyyy'), 7789);
INSERT INTO EMP VALUES
    (7782,'CLARK',            NULL, 7499);
INSERT INTO EMP VALUES
    (7788,'SCOTT',            to_date('13-08-1987', 'dd-mm-yyyy'), 7499);



CREATE TABLE JOB
       (JOBNO NUMBER(4)
             PRIMARY KEY,
	JOBNAME VARCHAR2(30)
             NOT NULL, 
        MINSALARY NUMBER(6))
;



INSERT INTO JOB VALUES
    (1000, 'MANAGER',               2500);
INSERT INTO JOB VALUES
    (1001, 'FINANCIAL DIRECTOR',    7500);
INSERT INTO JOB VALUES
    (1002, 'EXECUTIVE DIRECTOR',    8000);
INSERT INTO JOB VALUES
    (1003, 'SALESMAN',              1500);
INSERT INTO JOB VALUES
    (1004, 'CLERK',                  500);
INSERT INTO JOB VALUES
    (1005, 'DRIVER',                1800);
INSERT INTO JOB VALUES
    (1006, 'PRESIDENT',            15000);



CREATE TABLE CAREER
       (JOBNO NUMBER(4)
             REFERENCES JOB(JOBNO) NOT NULL,
        EMPNO NUMBER(4)
             REFERENCES EMP(EMPNO) NOT NULL,
        DEPTNO NUMBER(4)
             REFERENCES DEPT(DEPTNO),
	STARTDATE DATE
             NOT NULL, 
	ENDDATE DATE)
;
 

INSERT INTO CAREER VALUES
    (1004, 7698, 10, to_date('21-5-1999','dd-mm-yyyy'), to_date('1-6-1999','dd-mm-yyyy'));
INSERT INTO CAREER VALUES
    (1003, 7698, 10, to_date('1-6-2010','dd-mm-yyyy'), NULL);

INSERT INTO CAREER VALUES
    (1003, 7369, 20, to_date('21-5-2005','dd-mm-yyyy'), NULL);
INSERT INTO CAREER VALUES
    (1001, 7499, 30, to_date('2-1-2003','dd-mm-yyyy'), to_date('31-12-2005','dd-mm-yyyy'));
INSERT INTO CAREER VALUES
    (1004, 7654, 20, to_date('21-7-1999','dd-mm-yyyy'), to_date('1-6-2004','dd-mm-yyyy'));
INSERT INTO CAREER VALUES
    (1002, 7499, 30, to_date('1-6-2006','dd-mm-yyyy'), to_date('25-10-2008','dd-mm-yyyy'));
INSERT INTO CAREER VALUES
    (1001, 7499, NULL, to_date('12-10-2006','dd-mm-yyyy'), NULL);
INSERT INTO CAREER VALUES
    (1004, 7369, 30, to_date('1-7-2000','dd-mm-yyyy'), NULL);
INSERT INTO CAREER VALUES
    (1001, 7499, 10, to_date('1-1-2008','dd-mm-yyyy'), NULL);
INSERT INTO CAREER VALUES
    (1005, 7789, 40, to_date('1-1-2001','dd-mm-yyyy'), NULL);
INSERT INTO CAREER VALUES
    (1006, 7790, 40, to_date('1-10-2001','dd-mm-yyyy'), NULL);



CREATE TABLE SALARY
       (EMPNO NUMBER(4)
             REFERENCES EMP(EMPNO),
        MONTH NUMBER(2)
             CHECK(MONTH>0 AND MONTH<13),
        YEAR NUMBER(4)
             CHECK(YEAR>1987 AND YEAR<2017),
	SALVALUE NUMBER(6));



INSERT INTO SALARY VALUES
    (7369, 05, 2007, 2580);  
INSERT INTO SALARY VALUES
    (7369, 06, 2007, 2650);  
INSERT INTO SALARY VALUES
    (7369, 07, 2007, 2510);  
INSERT INTO SALARY VALUES
    (7369, 08, 2007, 2495);  
INSERT INTO SALARY VALUES
    (7369, 09, 2007, 1750);  
INSERT INTO SALARY VALUES
    (7369, 10, 2007, 3540);  
INSERT INTO SALARY VALUES
    (7369, 11, 2007, 2580);  
INSERT INTO SALARY VALUES
    (7369, 12, 2007, 2050);  
INSERT INTO SALARY VALUES
    (7789, 01, 2008, 1850);
INSERT INTO SALARY VALUES
    (7789, 02, 2008, 1900);
INSERT INTO SALARY VALUES
    (7789, 03, 2008, 1950);
INSERT INTO SALARY VALUES
    (7789, 04, 2008, 1950);
INSERT INTO SALARY VALUES
    (7790, 05, 2009, 600);
INSERT INTO SALARY VALUES
    (7790, 06, 2009, 650);
INSERT INTO SALARY VALUES
    (7790, 07, 2009, 700);
INSERT INTO SALARY VALUES
    (7499, 08, 2010, 8050);
INSERT INTO SALARY VALUES
    (7499, 09, 2010, 8050);
INSERT INTO SALARY VALUES
    (7499, 10, 2010, 8150);
INSERT INTO SALARY VALUES 
    (7369, 01, 2015, 3000);
INSERT INTO SALARY VALUES 
    (7369, 02, 2015, 3000);
INSERT INTO SALARY VALUES 
    (7369, 03, 2015, 3000);
INSERT INTO SALARY VALUES 
    (7369, 04, 2015, 3000);
INSERT INTO SALARY VALUES 
    (7369, 05, 2015, 3000);
INSERT INTO SALARY VALUES 
    (7499, 01, 2015, 3200);
INSERT INTO SALARY VALUES 
    (7499, 02, 2015, 3200);
INSERT INTO SALARY VALUES 
    (7499, 03, 2015, 3200);
INSERT INTO SALARY VALUES 
    (7499, 04, 2015, 3200);
INSERT INTO SALARY VALUES 
    (7499, 05, 2015, 3200);
INSERT INTO SALARY VALUES 
    (7499, 01, 2016, 3500);
INSERT INTO SALARY VALUES 
    (7499, 02, 2016, 3500);
INSERT INTO SALARY VALUES 
    (7499, 03, 2016, 3500);
INSERT INTO SALARY VALUES 
    (7499, 04, 2016, 3500);
INSERT INTO SALARY VALUES 
    (7369, 01, 2016, 3100);
INSERT INTO SALARY VALUES 
    (7369, 02, 2016, 3100);
INSERT INTO SALARY VALUES 
    (7369, 03, 2016, 3100);


-----------------------------QUERIES_LUB_1----------------------------------

--Выдать информацию о местоположении отдела продаж (SALES) компании.			
SELECT DEPTNAME, DEPTADDR FROM DEPT WHERE DEPTNAME = 'SALES';

--Выдать информацию об отделах, расположенных в Chicago и New York.
SELECT * FROM DEPT WHERE DEPTADDR = 'CHICAGO' OR DEPTADDR = 'NEW YORK';

--Найти минимальную заработную плату, начисленную в 2009 году.
SELECT MIN(SALVALUE) FROM SALARY WHERE YEAR = 2009;

--Выдать информацию обо всех работниках, родившихся не позднее 1 января 1960 года.
SELECT * FROM EMP WHERE BIRTHDATE <= to_date('1-1-1960','dd-mm-yyyy');

--Подсчитать число работников, сведения о которых имеются в базе данных .
SELECT COUNT(*) FROM EMP;

--Найти работников, чьё имя состоит из одного слова. Имена выдать на нижнем регистре, с удалением  стоящей справа буквы t.
SELECT RTRIM(LOWER(EMPNAME), 't') FROM EMP WHERE EMPNAME NOT LIKE '% %';

--Выдать информацию о работниках, указав дату рождения в формате день(число), месяц(название), год(название).
SELECT EMPNO, EMPNAME, TO_CHAR(BIRTHDATE, 'DD-MONTH-YEAR','NLS_DATE_LANGUAGE = RUSSIAN') FROM EMP;

--Тоже, но год числом.
SELECT EMPNO, EMPNAME, TO_CHAR(BIRTHDATE,'DD-MONTH-YYYY') FROM EMP;

--Выдать информацию о должностях, изменив названия должности “CLERK” и “DRIVER” на “WORKER”.
SELECT DECODE(JOBNAME, 'DRIVER', 'WORKER', 'CLERK', 'WORKER', JOBNAME) FROM JOB;

--Определите среднюю зарплату за годы, в которые были начисления не менее чем за три месяца.
SELECT YEAR, ROUND(AVG(SALVALUE),2) FROM SALARY GROUP BY YEAR HAVING COUNT(MONTH)>= 3;

--Выведете ведомость получения зарплаты с указанием имен служащих.
SELECT EMP.EMPNAME, SALARY.MONTH, SALARY.YEAR, SALARY.SALVALUE FROM EMP,SALARY WHERE SALARY.EMPNO = EMP.EMPNO;

--Укажите сведения о начислении сотрудникам зарплаты, попадающей в вилку:
--минимальный оклад по должности - минимальный оклад по должности плюс пятьсот. Укажите соответствующую вилке должность.
SELECT EMP.EMPNAME, JOB.JOBNAME, SALARY.SALVALUE, JOB.MINSALARY FROM SALARY 
    INNER JOIN EMP ON SALARY.EMPNO = EMP.EMPNO 
    INNER JOIN CAREER ON CAREER.EMPNO = EMP.EMPNO 
    INNER JOIN JOB ON JOB.JOBNO = CAREER.JOBNO
    WHERE SALARY.SALVALUE > JOB.MINSALARY AND SALARY.SALVALUE < JOB.MINSALARY + 500;
    
-- Укажите сведения о заработной плате, совпадающей с минимальными окладами по должностям (с указанием этих должностей).   
SELECT EMP.EMPNAME, SALARY.SALVALUE, JOB.MINSALARY, JOB.JOBNAME FROM SALARY  
    INNER JOIN EMP ON (SALARY.EMPNO = EMP.EMPNO) 
    INNER JOIN CAREER ON (EMP.EMPNO = CAREER.EMPNO) 
    INNER JOIN JOB ON (CAREER.JOBNO = JOB.JOBNO) 
    WHERE SALARY.SALVALUE = JOB.MINSALARY;
    
-- join?    
--SELECT EMP.EMPNAME, SALARY.SALVALUE, JOB.MINSALARY, JOB.JOBNAME FROM SALARY, EMP, CAREER, JOB 
--WHERE SALARY.EMPNO = EMP.EMPNO AND EMP.EMPNO = CAREER.EMPNO AND CAREER.JOBNO = JOB.JOBNO;      

--Найдите сведения о карьере сотрудников с указанием вместо номера сотрудника его имени.
SELECT EMP.EMPNAME, CAREER.JOBNO, CAREER.DEPTNO, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP NATURAL JOIN CAREER;

--Найдите сведения о карьере сотрудников с указанием вместо номера сотрудника его имени.
SELECT EMP.EMPNAME, CAREER.JOBNO, CAREER.DEPTNO, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP 
    INNER JOIN CAREER ON EMP.EMPNO = CAREER.EMPNO;
    
--Выдайте сведения о карьере сотрудников с указанием их имён, наименования должности, и названия отдела.
SELECT EMP.EMPNAME, JOB.JOBNAME, DEPT.DEPTNAME, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP
    INNER JOIN CAREER ON CAREER.EMPNO = EMP.EMPNO
    INNER JOIN DEPT ON CAREER.DEPTNO = DEPT.DEPTNO
    INNER JOIN JOB ON JOB.JOBNO = CAREER.JOBNO;
    
--Выдайте сведения о карьере сотрудников с указанием их имён.
SELECT EMP.EMPNAME, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP 
    LEFT OUTER JOIN CAREER ON EMP.EMPNO = CAREER.EMPNO ;   

--Составьте запрос с использованием противоположного вида соединения.       
SELECT EMP.EMPNAME, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP
    RIGHT OUTER JOIN CAREER ON EMP.EMPNO = CAREER.EMPNO ;   

--Составьте запрос с использованием полного внешнего соединения.
SELECT EMP.EMPNAME, CAREER.STARTDATE, CAREER.ENDDATE FROM EMP
    FULL OUTER JOIN CAREER ON EMP.EMPNO = CAREER.EMPNO ;     
     


-----------------------------QUERIES_LUB_2----------------------------------
  
--Найти имена сотрудников, получивших за годы начисления зарплаты минимальную зарплату.
SELECT EMP.EMPNAME FROM EMP 
    INNER JOIN SALARY ON EMP.EMPNO = SALARY.EMPNO
    WHERE (SELECT MIN(SALVALUE) FROM SALARY) = SALARY.SALVALUE;

--Найти имена сотрудников, работавших или работающих в тех же отделах, в которых работал или работает сотрудник 
--с именем RICHARD MARTIN.    
SELECT EMPNAME FROM EMP
    WHERE EMPNO IN (SELECT DISTINCT EMPNO FROM CAREER
        WHERE DEPTNO IN (SELECT DEPTNO FROM CAREER
            WHERE EMPNO = (SELECT EMPNO FROM EMP
                WHERE EMPNAME = 'RICHARD MARTIN')))
    AND NOT EMPNAME = 'RICHARD MARTIN';
                
--Найти имена сотрудников, работавших или работающих в тех же отделах и должностях, что и сотрудник 'RICHARD MARTIN'.
SELECT EMPNAME FROM EMP
    WHERE EMPNO IN (SELECT DISTINCT EMPNO FROM CAREER
        WHERE DEPTNO IN (SELECT DEPTNO FROM CAREER
            WHERE EMPNO = (SELECT EMPNO FROM EMP
                WHERE EMPNAME = 'RICHARD MARTIN')) 
                
        AND JOBNO IN (SELECT JOBNO FROM CAREER
            WHERE EMPNO = (SELECT EMPNO FROM EMP
                WHERE EMPNAME = 'RICHARD MARTIN')))
    AND NOT EMPNAME = 'RICHARD MARTIN';
     
--Найти сведения о номерах сотрудников, получивших за какой-либо месяц зарплату большую, чем средняя зарплата за 2007 г. 
--или большую, чем средняя зарплата за 2008г.
SELECT DISTINCT EMPNO FROM SALARY 
    WHERE SALVALUE > ANY(SELECT AVG(SALVALUE) FROM SALARY GROUP BY YEAR HAVING YEAR = 2007 OR YEAR = 2008);
     
--Найти сведения о номерах сотрудников, получивших зарплату за какой-либо месяц большую, чем средние зарплаты за все годы начислений. 
SELECT DISTINCT EMPNO FROM SALARY 
    WHERE SALVALUE > ALL(SELECT AVG(SALVALUE) FROM SALARY GROUP BY YEAR);
    
--Определить годы, в которые начисленная средняя зарплата была больше средней зарплаты за все годы начислений.
SELECT YEAR FROM SALARY 
    GROUP BY YEAR 
    HAVING AVG(SALVALUE) > (SELECT AVG(SALVALUE) FROM SALARY);

--Определить номера отделов, в которых работали или работают сотрудники, имеющие начисления зарплаты.
SELECT DISTINCT DEPTNO
    FROM DEPT
    WHERE DEPTNO IN (
    SELECT DEPTNO
        FROM CAREER  NATURAL JOIN EMP NATURAL JOIN SALARY S
        WHERE S.SALVALUE IS NOT NULL)
    ORDER BY DEPTNO;

--Определить номера отделов, в которых работали или работают сотрудники, имеющие начисления зарплаты.
SELECT DEPTNO
    FROM DEPT
    WHERE EXISTS (
    SELECT SALVALUE
        FROM CAREER NATURAL JOIN EMP NATURAL JOIN SALARY
        WHERE DEPT.DEPTNO = CAREER.DEPTNO);

--Определить номера отделов, для сотрудников которых не начислялась зарплата.
SELECT DEPTNO
    FROM DEPT
    WHERE NOT EXISTS (
    SELECT SALVALUE
        FROM CAREER NATURAL JOIN EMP NATURAL JOIN SALARY
        WHERE DEPT.DEPTNO = CAREER.DEPTNO);

--Вывести сведения о карьере сотрудников с указанием названий и адресов отделов вместо номеров отделов.
SELECT CAREER.EMPNO, DEPT.DEPTNAME, DEPT.DEPTADDR, CAREER.STARTDATE, CAREER.ENDDATE FROM CAREER
    NATURAL JOIN DEPT; 

--Определить целую часть средних зарплат, по годам начисления.
SELECT YEAR, CAST(AVG(SALVALUE) AS INT) FROM SALARY GROUP BY YEAR ORDER BY YEAR;

--Разделите сотрудников на возрастные группы: 
--A) возраст 20-30 лет; B) 31-40 лет; C) 41-50; D) 51-60 или возраст не определён.
SELECT EMPNO, EMPNAME, 
    CASE
        WHEN MONTHS_BETWEEN (SYSDATE, BIRTHDATE) / 12 BETWEEN 20 AND 30 THEN '20-30'
        WHEN MONTHS_BETWEEN (SYSDATE, BIRTHDATE) / 12 BETWEEN 31 AND 40 THEN '31-40'
        WHEN MONTHS_BETWEEN (SYSDATE, BIRTHDATE) / 12 BETWEEN 41 AND 50 THEN '41-50'
        WHEN MONTHS_BETWEEN (SYSDATE, BIRTHDATE) / 12 BETWEEN 51 AND 60 THEN '51-60'
        ELSE NULL
        END
        AS AGE_GROUP
    FROM EMP;
    
--Перекодируйте номера отделов, добавив перед номером отдела буквы BI для номеров <=20, буквы LN для номеров >=30.
SELECT
    CASE
        WHEN DEPTNO <= 20 THEN CONCAT('BI', CAST (DEPTNO AS VARCHAR(10)))
        WHEN DEPTNO >= 30 THEN CONCAT('LN', CAST (DEPTNO AS VARCHAR(10)))
    END
    AS DEPTNO, DEPTNAME, DEPTADDR
    FROM DEPT;
    
--Выдать информацию о сотрудниках из таблицы EMP, заменив отсутствие данного о дате рождения датой '01-01-1000'.    
SELECT EMPNO, EMPNAME,
    COALESCE(BIRTHDATE, to_date('01-01-1000', 'dd-mm-yyyy')) AS BIRTHDATE
    FROM EMP
