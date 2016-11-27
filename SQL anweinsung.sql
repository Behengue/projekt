#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Kunde
#------------------------------------------------------------

CREATE TABLE Kunde(
        IDKunde int (11) Auto_increment  NOT NULL ,
        Name    Varchar (50) ,
        Stadt   Varchar (100) ,
        PLZ     Int ,
        Strasse Varchar (100) ,
        Land    Varchar (225) ,
        PRIMARY KEY (IDKunde )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tasche
#------------------------------------------------------------

CREATE TABLE Tasche(
        IDTasche int (11) Auto_increment  NOT NULL ,
        Name     Varchar (25) ,
        Menge    Int ,
        Preis    Int ,
        PATH     Varchar (255) ,
        IDDesign Int ,
        IDMarke  Int ,
        PRIMARY KEY (IDTasche )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Kategorie
#------------------------------------------------------------

CREATE TABLE Kategorie(
        IDKategorie int (11) Auto_increment  NOT NULL ,
        Name        Varchar (50) ,
        Bezeichnung Varchar (50) ,
        PRIMARY KEY (IDKategorie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Marke
#------------------------------------------------------------

CREATE TABLE Marke(
        IDMarke     int (11) Auto_increment  NOT NULL ,
        Name        Varchar (50) ,
        Bezeichnung Varchar (50) ,
        PRIMARY KEY (IDMarke )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Type
#------------------------------------------------------------

CREATE TABLE Type(
        IDType      int (11) Auto_increment  NOT NULL ,
        Name        Varchar (50) ,
        Bezeichnung Varchar (50) ,
        PRIMARY KEY (IDType )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Design
#------------------------------------------------------------

CREATE TABLE Design(
        IDDesign    int (11) Auto_increment  NOT NULL ,
        Name        Varchar (50) ,
        Bezeichnung Varchar (50) ,
        PRIMARY KEY (IDDesign )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: kauft
#------------------------------------------------------------

CREATE TABLE kauft(
        Datum    Datetime ,
        IDKunde  Int NOT NULL ,
        IDTasche Int NOT NULL ,
        PRIMARY KEY (IDKunde ,IDTasche )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: hatkategorie
#------------------------------------------------------------

CREATE TABLE hatkategorie(
        IDTasche    Int NOT NULL ,
        IDKategorie Int NOT NULL ,
        PRIMARY KEY (IDTasche ,IDKategorie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: hattype
#------------------------------------------------------------

CREATE TABLE hattype(
        IDTasche Int NOT NULL ,
        IDType   Int NOT NULL ,
        PRIMARY KEY (IDTasche ,IDType )
)ENGINE=InnoDB;

ALTER TABLE Tasche ADD CONSTRAINT FK_Tasche_IDDesign FOREIGN KEY (IDDesign) REFERENCES Design(IDDesign);
ALTER TABLE Tasche ADD CONSTRAINT FK_Tasche_IDMarke FOREIGN KEY (IDMarke) REFERENCES Marke(IDMarke);
ALTER TABLE kauft ADD CONSTRAINT FK_kauft_IDKunde FOREIGN KEY (IDKunde) REFERENCES Kunde(IDKunde);
ALTER TABLE kauft ADD CONSTRAINT FK_kauft_IDTasche FOREIGN KEY (IDTasche) REFERENCES Tasche(IDTasche);
ALTER TABLE hatkategorie ADD CONSTRAINT FK_hatkategorie_IDTasche FOREIGN KEY (IDTasche) REFERENCES Tasche(IDTasche);
ALTER TABLE hatkategorie ADD CONSTRAINT FK_hatkategorie_IDKategorie FOREIGN KEY (IDKategorie) REFERENCES Kategorie(IDKategorie);
ALTER TABLE hattype ADD CONSTRAINT FK_hattype_IDTasche FOREIGN KEY (IDTasche) REFERENCES Tasche(IDTasche);
ALTER TABLE hattype ADD CONSTRAINT FK_hattype_IDType FOREIGN KEY (IDType) REFERENCES Type(IDType);
