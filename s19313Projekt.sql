



CREATE TABLE Doctor (
    idDoctora number(5)  NOT NULL,
    idStanowiska number(5)  NOT NULL,
    Imie varchar(12)  NOT NULL,
    Nazwisko varchar(15)  NOT NULL,
    bonus int,
    CONSTRAINT Doctor_pk PRIMARY KEY (idDoctora)
) ;

-- Table: GABINET
CREATE TABLE GABINET (
    idGABINETY number(4)  NOT NULL,
    numer number(3)  NOT NULL,
    pietro number(2)  NOT NULL,
    Wyd varchar(15)  NOT NULL,
    CONSTRAINT GABINET_pk PRIMARY KEY (idGABINETY)
) ;

-- Table: Karta
CREATE TABLE Karta (
    idKarty number(4)  NOT NULL,
    DataUrodzin date  NOT NULL,
    Gatunek varchar(15)  NOT NULL,
    Gromada varchar(12)  NOT NULL,
    CONSTRAINT Karta_pk PRIMARY KEY (idKarty)
) ;

-- Table: Leczenie
CREATE TABLE Leczenie (
    idLeczenie number(4)  NOT NULL,
    idCHoroby number(5)  NOT NULL,
    idPacjenta number(4)  NOT NULL,
    DataRozpocz date  NOT NULL,
    DataKonca date  NOT NULL,
    
    
    CONSTRAINT Leczenie_pk PRIMARY KEY (idLeczenie)
) ;

-- Table: MD
CREATE TABLE MD (idMD number(4)  NOT NULL,
    idProcedury number(4)  NOT NULL,
    idLeczenia number(4)  NOT NULL,
    DataRealizowania date  NOT NULL,
    CzyPlanowana varchar(3) NOT NULL,
    Realizowana number(4)  NOT NULL,
    
    CONSTRAINT MD_pk PRIMARY KEY (idMD)
) ;

-- Table: Pacjent
CREATE TABLE Pacjent (
    idPacjenta int  NOT NULL,
    ImiePacjenta varchar(10)  NOT NULL,
    ImieWlasnika varchar(10)  NOT NULL,
    NazwiskoWl varchar(15)  NOT NULL,
 
    CONSTRAINT Pacjent_pk PRIMARY KEY (idPacjenta)
) ;

-- Table: Procedura
CREATE TABLE Procedura (
    idProcedury int  NOT NULL,
    Cena int  NOT NULL,
    nazwa varchar(25)  NOT NULL,
    CONSTRAINT Procedura_pk PRIMARY KEY (idProcedury)
) ;

-- Table: Stanowisko
CREATE TABLE Stanowisko (
    idStanowisko int  NOT NULL,
    nazwa varchar(15)  NOT NULL,
    Wynagrodzenie int  NOT NULL,
    CONSTRAINT Stanowisko_pk PRIMARY KEY (idStanowisko)
) ;

-- Table: TypWizyty
CREATE TABLE TypWizyty (
    idTW int  NOT NULL,
    cena int  NOT NULL,
    nazwa varchar(15)  NOT NULL,
    CONSTRAINT TypWizyty_pk PRIMARY KEY (idTW)
) ;

-- Table: Wizyta
CREATE TABLE Wizyta (
    idWizyty int  NOT NULL,
    idPacjenta int  NOT NULL,
    idDoctora int  NOT NULL,
    czas date  NOT NULL,
    Wyd int  NOT NULL,
    idGABINET number(4)  NOT NULL,
    CONSTRAINT Wizyta_pk PRIMARY KEY (idWizyty)
) ;

-- Table: choroby
CREATE TABLE choroby (
    idCHoroby number(5)  NOT NULL,
    NAZWA varchar2(15)  NOT NULL,
    typ varchar2(10)  NOT NULL,
    CONSTRAINT choroby_pk PRIMARY KEY (idCHoroby)
) ;
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

INSERT INTO DOCTOR VALUES
(1, 3, 'Goracio','Nej',100);
INSERT INTO DOCTOR VALUES
(2, 4, 'Sharyk','Poligrafow',200);
INSERT INTO DOCTOR VALUES
(3, 1, 'Leonid','Breznew',300);
INSERT INTO DOCTOR VALUES
(4, 2, 'Julia','Korowa',250);
INSERT INTO DOCTOR VALUES
(5, 5, 'Zoja','Kosmodemjanska',700);

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

INSERT INTO Leczenie VALUES
(1,4,1, TO_DATE('19-01-2018', 'DD-MM-YYYY'),TO_DATE('02-10-2018', 'DD-MM-YYYY')); 
INSERT INTO Leczenie VALUES
(2,1,5, TO_DATE('01-01-2018', 'DD-MM-YYYY'),TO_DATE('02-01-2018', 'DD-MM-YYYY')); 
INSERT INTO Leczenie VALUES
(3,2,1, TO_DATE('01-01-2018', 'DD-MM-YYYY'),TO_DATE('02-01-2018', 'DD-MM-YYYY')); 

Insert into MD Values
(1,1,1, TO_DATE('02-01-2018', 'DD-MM-YYYY'),'TAK',1); 
Insert into MD Values
(2,1,1, TO_DATE('05-01-2018', 'DD-MM-YYYY'),'TAK',2); 
Insert into MD Values
(3,2,2, TO_DATE('09-01-2018', 'DD-MM-YYYY'),'TAK',3); 
Insert into MD Values
(4,1,2, TO_DATE('18-01-2018', 'DD-MM-YYYY'),'TAK',3) ;
Insert into MD Values
(5,3,3, TO_DATE('19-01-2018', 'DD-MM-YYYY'),'NIE',4);

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

Insert into Procedura Values
 (1,25,'zastrzyk_leku');
  Insert into Procedura Values
 (2,100,'gipsowanie');
  Insert into Procedura Values
 (3,150,'Konsultacja');
  Insert into Procedura Values
 (4,200,'rengen');
 
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
 
 Insert into TypWizyty Values
  (1,100,'regularna');
Insert into TypWizyty Values
  (2,250,'terminowa');
  Insert into TypWizyty Values
  (3,0,'bezkosztowna');
  
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
INSERT INTO Wizyta VALUES
(6,4,4, TO_DATE('19-01-2018-14-30', 'DD-MM-YYYY-HH24-MI'),3,3);
-- foreign keys
-- Reference: Doctor_MD (table: MD)
ALTER TABLE MD ADD CONSTRAINT Doctor_MD
    FOREIGN KEY (Realizowana)
    REFERENCES Doctor (idDoctora);

-- Reference: Doctor_Stanowisko (table: Doctor)
ALTER TABLE Doctor ADD CONSTRAINT Doctor_Stanowisko
    FOREIGN KEY (idStanowiska)
    REFERENCES Stanowisko (idStanowisko);

-- Reference: Leczenie_MD (table: MD)
ALTER TABLE MD ADD CONSTRAINT Leczenie_MD
    FOREIGN KEY (idLeczenia)
    REFERENCES Leczenie (idLeczenie);

-- Reference: Leczenie_choroby (table: Leczenie)
ALTER TABLE Leczenie ADD CONSTRAINT Leczenie_choroby
    FOREIGN KEY (idCHoroby)
    REFERENCES choroby (idCHoroby);

-- Reference: MD_Procedura (table: MD)
ALTER TABLE MD ADD CONSTRAINT MD_Procedura
    FOREIGN KEY (idProcedury)
    REFERENCES Procedura (idProcedury);

-- Reference: Pacjent_Karta (table: Pacjent)
ALTER TABLE Pacjent ADD CONSTRAINT Pacjent_Karta
    FOREIGN KEY (idPacjenta)
    REFERENCES Karta (idKarty);

-- Reference: Pacjent_Leczenie (table: Leczenie)
ALTER TABLE Leczenie ADD CONSTRAINT Pacjent_Leczenie
    FOREIGN KEY (idPacjenta)
    REFERENCES Pacjent (idPacjenta);

-- Reference: Wizyta_Doctor (table: Wizyta)
ALTER TABLE Wizyta ADD CONSTRAINT Wizyta_Doctor
    FOREIGN KEY (idDoctora)
    REFERENCES Doctor (idDoctora);

-- Reference: Wizyta_GABINET (table: Wizyta)
ALTER TABLE Wizyta ADD CONSTRAINT Wizyta_GABINET
    FOREIGN KEY (idGABINET)
    REFERENCES GABINET (idGABINETY);

-- Reference: Wizyta_Pacjent (table: Wizyta)
ALTER TABLE Wizyta ADD CONSTRAINT Wizyta_Pacjent
    FOREIGN KEY (idPacjenta)
    REFERENCES Pacjent (idPacjenta);

-- Reference: Wizyta_TypWizyty (table: Wizyta)
ALTER TABLE Wizyta ADD CONSTRAINT Wizyta_TypWizyty
    FOREIGN KEY (Wyd)
    REFERENCES TypWizyty (idTW);

-- End of file.



---1 Jaki procedury robil doctor---
Select Imie ,Nazwisko,Nazwa ,DataRealizowania
from DOCTOR a, MD b, Procedura c
where a.idDoctora=b.Realizowana and b.idProcedury=c.idProcedury;

---2 wizyty ktore prowadzil kazdydoctor ---
Select a.Imie ,a.Nazwisko ,c.Nazwa ,b.czas
from Doctor a,Wizyta b,TypWizyty c
Where a.idDoctora=b.idDoctora and b.wyd=c.IdTW;

---3 Ile zarobili z kazdej procedury ---

Select Nazwa, sum(cena) 
from Procedura, MD
where MD.idProcedury=Procedura.idProcedury
group by Nazwa;
---4 Kto zrobil najwecej procedur---
Select Imie, Nazwisko, count(b.idProcedury)
from DOCTOR a, MD b, Procedura c
where a.idDoctora=b.Realizowana and b.idProcedury=c.idProcedury
group by Imie,Nazwisko
having count(b.idprocedury) =(Select max(k)
from(
Select Imie,Nazwisko , count(b.idProcedury) as k
from DOCTOR a, MD b, Procedura c
where a.idDoctora=b.Realizowana and b.idProcedury=c.idProcedury
group by Imie,Nazwisko));
---5 Kiedy odbyla ostatnia wizyta w przychodnie ---
SELECT  idWizyty,czas
FROM Wizyta
WHERE czas=(SELECT MAX(czas)
  FROM wizyta );
  --6 
  SELECT e.imie, e.nazwisko, e.idstanowiska
FROM Doctor e
WHERE e.bonus<=
    (SELECT AVG(bonus)
    FROM Doctor 
    WHERE idstanowiska=e.stanowisko)
ORDER BY e.bonus;
-- 7 triger zweksza bonus doctora o 50 za kazde wizyte ---

DROP TRIGGER checkAfterInsertPLSQL;
CREATE OR REPLACE TRIGGER checkAfterInsertLSQL 
After Insert 
on wizyta

for each row
Declare kek varchar(15);
begin 
Select nazwa into kek 
from TypWizyty 
where :new.wyd=TypWizyty.idTW;
if(kek like 'terminowa')
then
update doctor set
bonus=bonus+50
where doctor.iddoctora=:new.idDoctora;
end if;
end;

INSERT INTO Wizyta VALUES
(13,5,1, TO_DATE('24-01-2018-12-05', 'DD-MM-YYYY-HH24-MI'),2,2); 

-- 8 triger przy wstaweniu ceny powyzej 1000---

DROP TRIGGER checkBeforeInsertorUpdatePLSQL;
CREATE OR REPLACE TRIGGER  checkBeforeInsertorUpdatePLSQL
Before Insert or Update
on Procedura
for each row
Declare kek2 varchar(15);
begin 
if(:new.cena > 1000)
then
raise_application_error(-20500, 'Nie mozna stawic cene za procedure wiecej  niz 1000');
end if;
end;

create table Wizytalog
(data date,
typOperacyji varchar(15));

---9 triger
DROP TRIGGER checkBeforeInsertorUpdate2;
CREATE OR REPLACE TRIGGER  checkBeforeInsertorUpdate2
Before Insert or Update
on Wizyta
DECLARE
  log_action  WizytaLOG.typOperacyji%TYPE;
BEGIN
  IF INSERTING THEN
    log_action := 'Insert';
  ELSIF UPDATING THEN
    log_action := 'Update';
  ELSIF DELETING THEN
    log_action := 'Delete';
  ELSE
    DBMS_OUTPUT.PUT_LINE('This code is not reachable.');
  END IF;

  INSERT INTO WizytaLOG (data, typOperacyji)
    VALUES (SYSDATE, log_action);
END;

---10 triger po wprowadzenie wizyty pokazuje ile wizytow w kazdym dniu---
DROP TRIGGER checkAfterInsert2;
CREATE OR REPLACE TRIGGER checkAfterInsert2 
After Insert 
on wizyta

begin 
FOR j IN (Select to_char(czas,'YYYY-MM-DD') as shrerhs ,count(*) as kek 
from Wizyta
group by to_char(czas,'YYYY-MM-DD')) LOOP
    DBMS_OUTPUT.PUT_LINE (
     j.shrerhs ||'ja'|| j.kek 
    );
    end loop;
    dbms_output.put_line('shrek');
end;

INSERT INTO Wizyta VALUES
(17,5,1, TO_DATE('24-01-2018-12-05', 'DD-MM-YYYY-HH24-MI'),2,2); 


---11 zminiejsza 
DROP TRIGGER remowebonusafterDelete ;
CREATE OR REPLACE TRIGGER remowebonusafterDelete 
After Delete
on wizyta

for each row
Declare kek varchar(15);
begin 
Select nazwa into kek 
from TypWizyty 
where :old.wyd=TypWizyty.idTW;
if(kek like 'terminowa')
then
update doctor set
bonus=bonus-50
where doctor.iddoctora=:old.idDoctora;
end if;
end;

Delete from wizyta where wizyta.idwizyty = 13;

--12 leczenie usuwaje sie z wszystkimi dzialaniami medycznymi--
DROP TRIGGER remowebonusBeforeDelete ;
CREATE OR REPLACE TRIGGER remowebonusbeforeDelete 
Before Delete
on leczenie 
for each row
begin
delete from MD where :old.idleczenia=md.idleczena;
end;







