CREATE TABLE [dbo].[Zamestnanci]
(
	[IndexZamestnance] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Jmeno] NVARCHAR(50) NOT NULL, 
    [Prijmeni] NVARCHAR(50) NOT NULL, 
    [ZdravotniPojistovna] NVARCHAR(50) NOT NULL, 
    [Mesto] NVARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[PracovniPozice]
(
	[IndexPozice] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nazev] NVARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[ZamestnanciPoziceVazba]
(
    [IndexZamestnance] INT NOT NULL,
    [IndexPozice] INT NOT NULL,
    CONSTRAINT PK_ZamestnanciPoziceVazba PRIMARY KEY (IndexZamestnance, IndexPozice),
    CONSTRAINT FK_ZamestnanciPoziceVazba_Zamestnanci FOREIGN KEY (IndexZamestnance) REFERENCES Zamestnanci (IndexZamestnance),
    CONSTRAINT FK_ZamestnanciPoziceVazba_PracovniPozice FOREIGN KEY (IndexPozice) REFERENCES PracovniPozice (IndexPozice)
);
