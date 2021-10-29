DROP TABLE CHOROBY;
DROP TABLE DOCTOR;
DROP TABLE GABINET;
DROP TABLE KARTA;
DROP TABLE LECZENIE;

DROP TABLE MD;
DROP TABLE PACJENT;
DROP TABLE PROCEDURA;
DROP TABLE STANOWISKO;
DROP TABLE WIZYTA;
DROP TABLE TYPWIZYTY;

CREATE TABLE choroby
(idCHoroby Number(5) ,
NAZWA varchar2(15) ,
typ VARCHAR2(10),
PRIMARY KEY(idChoroby));



INSERT INTO Choroby VALUES
(1, 'Staszno', 'virus');
INSERT INTO Choroby VALUES
(2, 'Kabzda', 'bacteria');
INSERT INTO Choroby VALUES
(3, 'Kanec', 'parazyt');
INSERT INTO Choroby VALUES
(4, 'Zlamanie', 'trawma');
INSERT INTO Choroby VALUES
(5, 'Sutulost', 'trawma');

Alter table Leczenie 
Add Foreign Key (idChoroby) References Choroby(idChoroby);

Create table Doctor 
(idDoctora number(5) Not NUll,
idStanowiska number(5) Not Null,
Imie Varchar(12),
Nazwisko Varchar(15));

INSERT INTO DOCTOR VALUES
(1, 3, 'Goracio','Nej');
INSERT INTO DOCTOR VALUES
(2, 4, 'Sharyk','Poligrafow');
INSERT INTO DOCTOR VALUES
(3, 1, 'Leonid','Breznew');
INSERT INTO DOCTOR VALUES
(4, 2, 'Julia','Korowa');
INSERT INTO DOCTOR VALUES
(5, 5, 'Zoja','Kosmodemjanska');

Create table GABINET
(idGABINETY number(4) not NULL,
numer number(3),
pietro number(2),
Wyd varchar(15));

INSERT INTO Gabinet VALUES
(1, 101, 1,'GabinetLekarza');
INSERT INTO Gabinet VALUES
(2, 201, 2,'operacyjna');
INSERT INTO Gabinet VALUES
(3, 202, 2,'przedoperacyjna');
INSERT INTO Gabinet VALUES
(4, 301, 3,'procedurna');
INSERT INTO Gabinet VALUES
(5, 401, 4,'gabinetDOCglown');

Create table GABINET
(idGABINETY number(4) not NULL,
numer number(3),
pietro number(2),
Wyd varchar(15));

Create table Karta
(idKarty Number(4) NOT NULL,
DataUrodzin DATE,
Gatunek VARCHAR(15),
Gromada VarCHAR(12));

INSERT INTO Karta VALUES
(1, TO_DATE('02-01-2018', 'DD-MM-YYYY'), 'Pies','Ssak');
INSERT INTO Karta VALUES
(2, TO_DATE('25-10-2019', 'DD-MM-YYYY'), 'Lisa','Ssak');
INSERT INTO Karta VALUES
(3, TO_DATE('11-10-2008', 'DD-MM-YYYY'), 'Malpa','Ssak');
INSERT INTO Karta VALUES
(4, TO_DATE('04-02-2018', 'DD-MM-YYYY'), 'Waz','Gad');
INSERT INTO Karta VALUES
(5, TO_DATE('11-11-2018', 'DD-MM-YYYY'), 'Chomil','Ssak');

Create table Leczenie
(idLeczenie number(4) not null,
idChoroby number(4) not null,
idPacjenta number(4) not null,
DataRozpocz DATE,
DataKonca Date);

INSERT INTO Leczenie VALUES
(1,4,1, TO_DATE('19-01-2018', 'DD-MM-YYYY'),TO_DATE('02-10-2018', 'DD-MM-YYYY')); 
INSERT INTO Leczenie VALUES
(2,1,5, TO_DATE('01-01-2018', 'DD-MM-YYYY'),TO_DATE('02-01-2018', 'DD-MM-YYYY')); 
INSERT INTO Leczenie VALUES
(3,2,1, TO_DATE('01-01-2018', 'DD-MM-YYYY'),TO_DATE('02-01-2018', 'DD-MM-YYYY')); 


Create table MD
(idMD Number(4) not null,
idProcedury Number(4) not null,
idLeczenia Number(4) not null,
DataRealizowania Date,
CzyPlanowana BIT,
Realizowana Number(4) not null );

Insert into MD Values
(1,1,1, TO_DATE('02-01-2018', 'DD-MM-YYYY'),1,1); 
Insert into MD Values
(2,1,1, TO_DATE('05-01-2018', 'DD-MM-YYYY'),1,2); 
Insert into MD Values
(3,2,1, TO_DATE('09-01-2018', 'DD-MM-YYYY'),1,3); 
Insert into MD Values
(4,1,3, TO_DATE('18-01-2018', 'DD-MM-YYYY'),1,3) ;
Insert into MD Values
(5,3,2, TO_DATE('19-01-2018', 'DD-MM-YYYY'),0,4); 

Create table Pacjent
(idPacjenta int,
ImiePacjenta varchar(10),
ImieWlasnika varchar(10),
NazwiskoWl varchar(15));

Insert into Pacjent Values
(1,'Alisa','Marry','Pidoryaga');
Insert into Pacjent Values
(2,'Anfisa','Pidor','Belyash');
Insert into Pacjent Values
(3,'Nastya','Gadeunysz','Polos');
Insert into Pacjent Values
(4,'Ira','Ira','Joker');
Insert into Pacjent Values
(5,'Persik','Sofja','Finno');


Create table  Procedura 
(idProcedury int,
Cena int,
nazwa varchar(25));

 Insert into Procedura Values
 (1,25,'zastrzyk_leku');
  Insert into Procedura Values
 (2,100,'gipsowanie');
  Insert into Procedura Values
 (3,150,'Konsultacja');
  Insert into Procedura Values
 (4,200,'rengen');
 
Create table Stanowisko
(idStanowisko int,
nazwa varchar(15),
Wynagrodzenie int);

Insert into Stanowisko Values
 (1,'Specjalista',10000);
Insert into Stanowisko Values
 (2,'Pieliengarka',3400);
 Insert into Stanowisko Values
 (3,'LekarzGlowny',22000);
 Insert into Stanowisko Values
 (4,'PomocnikDokt',5900);
 Insert into Stanowisko Values
 (5,'StarPielengarka',7000);

Create table TypWizyty
(idTW int,
cena int,
nazwa varchar(15));

Insert into TypWizyty Values
  (1,100,'regularna');
Insert into TypWizyty Values
  (2,250,'terminowa');
  Insert into TypWizyty Values
  (3,0,'bezkosztowna');


create table Wizyta
(idWizyty int,
idPacjenta int,
idDoctora int,
czas Date,
idGabineta int,
Wyd int);

INSERT INTO Wizyta VALUES
(1,1,3, TO_DATE('16-01-2018-12-00', 'DD-MM-YYYY-HH24-MI'),2,1);

INSERT INTO Wizyta VALUES
(2,2,5, TO_DATE('16-01-2018-14-30', 'DD-MM-YYYY-HH24-MI'),3,1);

INSERT INTO Wizyta VALUES
(3,3,4, TO_DATE('17-01-2018-12-00', 'DD-MM-YYYY-HH24-MI'),2,1);

INSERT INTO Wizyta VALUES
(4,4,4, TO_DATE('18-01-2018-14-30', 'DD-MM-YYYY-HH24-MI'),3,3);

INSERT INTO Wizyta VALUES
(5,5,1, TO_DATE('19-01-2018-12-00', 'DD-MM-YYYY-HH24-MI'),2,2);



