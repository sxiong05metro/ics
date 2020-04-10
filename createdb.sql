-- Create statements for ReChord Website --
-- Tables: 	Album
-- 			Song
-- 			Artist
-- 			Band
-- 			Album_Artist
-- 			Band_Artist
-- ------------------------------------- --

USE ics325sp200108;

DROP TABLE IF EXISTS Band;
CREATE TABLE Band (
bandId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
bandName VARCHAR(255)
);

DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist (
artistId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
artistName VARCHAR(255)
);

DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
albumId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
albumName VARCHAR(255), 
bandId INT,
FOREIGN KEY (bandId) REFERENCES Band(bandId)
);

DROP TABLE IF EXISTS Song;
CREATE TABLE Song (
songId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
songName VARCHAR(255), 
albumId INT, 
FOREIGN KEY (albumId) REFERENCES Album(albumId)
);

DROP TABLE IF EXISTS Band_Artist;
CREATE TABLE Band_Artist (
bandId INT,
artistId INT, 
PRIMARY KEY (bandId, artistId),
FOREIGN KEY (bandId) REFERENCES Band(bandId),
FOREIGN KEY (artistId) REFERENCES Artist(artistId)
);

DROP TABLE IF EXISTS Album_Artist;
CREATE TABLE Album_Artist (
albumId INT,
artistId INT, 
PRIMARY KEY (albumId, artistId),
FOREIGN KEY (albumId) REFERENCES Album(albumId),
FOREIGN KEY (artistId) REFERENCES Artist(artistId)
);

-- For displaying web content
DROP TABLE IF EXISTS Music_Info;
CREATE TABLE Music_Info (
pageId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pageType VARCHAR(20),
entityId  INT
);

DROP TABLE IF EXISTS Music_Desc;
CREATE TABLE Music_Desc (
pageId INT NOT NULL PRIMARY KEY,
content VARCHAR(5000),
FOREIGN KEY (pageID) REFERENCES Music_Info(pageId)
);

-- For Administative/User Login
DROP TABLE IF EXISTS Decode_Access;
CREATE TABLE Decode_Access (
accessCode CHAR(1) NOT NULL PRIMARY KEY,
accessDesc VARCHAR(50),
canRemoveUser BOOLEAN,
canEditContent BOOLEAN,
canSubmitContent BOOLEAN,
canApproveContent BOOLEAN
);

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
userName VARCHAR(255) NOT NULL PRIMARY KEY,
userPass VARCHAR(255),
userStatus VARCHAR(20),
accessCode CHAR(1),
FOREIGN KEY (accessCode) REFERENCES Decode_Access(accessCode)
);


