--table 삭제 명령어
DROP TABLE hos
-----사람 테이블
CREATE TABLE hm(
    id NUMBER(13)NOT NULL,
    chk VARCHAR2(1)NULL,
    PRIMARY KEY(id)
);

select *
from hm

INSERT INTO hm VALUES (7001231111111, 'O');
INSERT INTO hm VALUES (8001231111111, 'X');
INSERT INTO hm VALUES (9001231111111, 'X');
INSERT INTO hm VALUES (7001232111111, 'X');
INSERT INTO hm VALUES (8001232111111, 'X');
INSERT INTO hm VALUES (9001232111111, 'X');
INSERT INTO hm VALUES (7101231111112, 'X');
INSERT INTO hm VALUES (8101231111112, 'X');
INSERT INTO hm VALUES (9101231111112, 'X');


--백신 테이블
CREATE TABLE vac(
    name VARCHAR2(10)NOT NULL,
    num VARCHAR2(12)NOT NULL,
    year VARCHAR2(8)NOT NULL,
    PRIMARY KEY(num)
);

select *
from vac

INSERT INTO vac VALUES ('pfizer', 'pc200601','210101');
INSERT INTO vac VALUES ('moderna', 'pc200602','210102');
INSERT INTO vac VALUES ('janssen', 'pc200603','210103');
INSERT INTO vac VALUES ('janssen', 'pc200604','210104');
INSERT INTO vac VALUES ('pfizer', 'pc200605','210105');
INSERT INTO vac VALUES ('pfizer', 'pc200606','210106');
INSERT INTO vac VALUES ('moderna', 'pc200607','210107');
INSERT INTO vac VALUES ('pfizer', 'pc200608','210108');
INSERT INTO vac VALUES ('janssen', 'pc200609','210109');

---병원 테이블
CREATE TABLE hos(
    address VARCHAR2(10)NOT NULL,
    name VARCHAR2(12)NOT NULL,
    PRIMARY KEY(address)
);

select *
from hos

INSERT INTO hos VALUES ('kyonggi', 'A');
INSERT INTO hos VALUES ('seoul', 'B');
INSERT INTO hos VALUES ('daegu', 'C');
INSERT INTO hos VALUES ('seungnam', 'D');
INSERT INTO hos VALUES ('suwon', 'E');
INSERT INTO hos VALUES ('ulsan', 'F');
INSERT INTO hos VALUES ('jeonbuk', 'G');
INSERT INTO hos VALUES ('kwangju', 'H');
INSERT INTO hos VALUES ('jeju', 'I');

--제조업체 테이블
CREATE TABLE comp(
    name VARCHAR2(8)NOT NULL,
    phone VARCHAR2(12)NOT NULL,
    loc VARCHAR2(10)NOT NULL,
    PRIMARY KEY(name)
);
select *
from comp

INSERT INTO comp VALUES('pfizer','01012345678','usa');
INSERT INTO comp VALUES('moderna','01012363678','usa');
INSERT INTO comp VALUES('janssen','01012361678','usa');
--예약 테이블
CREATE TABLE res(
    name VARCHAR2(10)NOT NULL,
    id NUMBER(13)NOT NULL,
    phone VARCHAR2(16) NULL,
    FOREIGN KEY(id)
    REFERENCES hm(id)
    
);
select *
from res

INSERT INTO res VALUES ('kim',7001231111111,'01056789012');
INSERT INTO res VALUES ('lim',8001231111111,'01014448888');
INSERT INTO res VALUES ('him',9001231111111,'01053129999');
INSERT INTO res VALUES ('oim',7001232111111,'01011112222');
INSERT INTO res VALUES ('pim',8001232111111,'01033334444');
INSERT INTO res VALUES ('qim',9001232111111,'01099999999');
INSERT INTO res VALUES ('yim',7101231111112,'01055556666');
INSERT INTO res VALUES ('ik',8101231111112,'01012340000');
INSERT INTO res VALUES ('im',9101231111112,'01000000000');

--구매 테이블
CREATE TABLE buy(
    num NUMBER(8)NOT NULL,
    loc VARCHAR2(16)NOT NULL,
    time VARCHAR2(6)NOT NULL
);
select *
from buy

INSERT INTO buy VALUES (123,'jeju','210203');
INSERT INTO buy VALUES (456,'suwon','210204');
INSERT INTO buy VALUES (789,'gyonggi','210205');
INSERT INTO buy VALUES (111,'ulsan','201221');
INSERT INTO buy VALUES (222,'junbuk','211111');
INSERT INTO buy VALUES (333,'seungnam','201112');
INSERT INTO buy VALUES (444,'london','210512');
INSERT INTO buy VALUES (555,'newyork','210226');
INSERT INTO buy VALUES (666,'paris','201128');

