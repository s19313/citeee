-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-06-22 20:56:40.507

-- foreign keys
ALTER TABLE MD
    DROP CONSTRAINT Doctor_MD;

ALTER TABLE Doctor
    DROP CONSTRAINT Doctor_Stanowisko;

ALTER TABLE MD
    DROP CONSTRAINT Leczenie_MD;

ALTER TABLE Leczenie
    DROP CONSTRAINT Leczenie_choroby;

ALTER TABLE MD
    DROP CONSTRAINT MD_Procedura;

ALTER TABLE Pacjent
    DROP CONSTRAINT Pacjent_Karta;

ALTER TABLE Leczenie
    DROP CONSTRAINT Pacjent_Leczenie;

ALTER TABLE Wizyta
    DROP CONSTRAINT Wizyta_Doctor;

ALTER TABLE Wizyta
    DROP CONSTRAINT Wizyta_GABINET;

ALTER TABLE Wizyta
    DROP CONSTRAINT Wizyta_Pacjent;

ALTER TABLE Wizyta
    DROP CONSTRAINT Wizyta_TypWizyty;

-- tables
DROP TABLE Doctor;

DROP TABLE GABINET;

DROP TABLE Karta;

DROP TABLE Leczenie;

DROP TABLE MD;

DROP TABLE Pacjent;

DROP TABLE Procedura;

DROP TABLE Stanowisko;

DROP TABLE TypWizyty;

DROP TABLE Wizyta;

DROP TABLE choroby;

-- End of file.

