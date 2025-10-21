CREATE DATABASE music;

USE music;

-- DROP DATABASE music;

/*
DROP TABLE DetailTransaction
DROP TABLE HeaderTransaction
DROP TABLE MsMusicIns
DROP TABLE MsMusicInsType
DROP TABLE MsEmployee
DROP TABLE MsBranch
*/

CREATE TABLE MsBranch
(
	BranchID VARCHAR(6) PRIMARY KEY,
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Phone VARCHAR(50),
	CONSTRAINT CheckBran1 CHECK (CHAR_LENGTH(BranchID)=5),
	CONSTRAINT CheckBran2 CHECK (BranchID REGEXP '^BR[0-9][0-9][0-9]$') -- Regular Expression Ex: BR012
);

DROP TABLE MsBranch;

CREATE TABLE MsMusicInsType
(
	MusicInsTypeID VARCHAR(6) PRIMARY KEY,
	MusicInsType VARCHAR(50) NOT NULL,	 
	CONSTRAINT CheckMsct1 CHECK (CHAR_LENGTH(MusicInsTypeID)=5),
	CONSTRAINT CheckMsct2 CHECK (MusicInsTypeID REGEXP 'MT[0-9][0-9][0-9]')
);

DROP TABLE MsMusicInsType;