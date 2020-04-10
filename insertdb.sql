-- INSERT statements for ReChord Website --
-- Tables: 	Album
-- 			Song
-- 			Artist
-- 			Band
-- 			Album_Artist
-- 			Band_Artist
-- 			Users
-- 			Decode_Access
-- 			Music_Info
-- 			Music_Desc
-- ------------------------------------- --

USE ics325sp20018;

-- Insert into Album table
INSERT INTO Album (albumName) VALUES ('Hollywood''s Bleeding');
INSERT INTO Album (albumName) VALUES ('Tattoo You');
SELECT * FROM Album;

-- Insert into Song table (need albumId from Album table)
-- For Album 1 (Hollywood''s Bleeding)
INSERT INTO Song (songName, albumId) VALUES ('Hollywood''s Bleeding', 1);
INSERT INTO Song (songName, albumId) VALUES ('Saint-Tropez', 1);
INSERT INTO Song (songName, albumId) VALUES ('Enemies', 1);
INSERT INTO Song (songName, albumId) VALUES ('Allergic', 1);
-- For Album 2 (Tattoo You)
INSERT INTO Song (songName, albumId) VALUES ('Start Me Up', 2);
INSERT INTO Song (songName, albumId) VALUES ('Hang Fire', 2);
INSERT INTO Song (songName, albumId) VALUES ('Slave', 2;
INSERT INTO Song (songName, albumId) VALUES ('Little T&A', 2);
SELECT * FROM Song;

-- Insert into Artist
INSERT INTO Artist (artistName) VALUES ('Post Malone');
INSERT INTO Artist (artistName) VALUES ('Mick Jagger');
INSERT INTO Artist (artistName) VALUES ('Keith Richard');
INSERT INTO Artist (artistName) VALUES ('Ronnie Wood');
INSERT INTO Artist (artistName) VALUES ('Charlie Watts');
SELECT * FROM Artist;

-- Insert into Band
INSERT INTO Band (bandName) VALUES ('The Rolling Stones');
SELECT * FROM Band;

-- Insert into Album_Artist table (need albumId from Album table and artistId from Artist table)
-- For Album 1 (Hollywood''s Bleeding) and Artist 1 (Post Malone)
INSERT INTO Album_Artist (albumId, artistId) VALUES (1, 1);
-- For Album 2 (Tattoo You) and Artist 2, 3, 4, and 5
INSERT INTO Album_Artist (albumId, artistId) VALUES (2, 2);
INSERT INTO Album_Artist (albumId, artistId) VALUES (2, 3);
INSERT INTO Album_Artist (albumId, artistId) VALUES (2, 4);
INSERT INTO Album_Artist (albumId, artistId) VALUES (2, 5);
SELECT * FROM Album_Artist;

-- Insert into Band_Artist table (need bandId from Band table and artistId from Artist table)
-- For Band 1 (The Rolling Stones) and Artist 2, 3, 4, and 5
INSERT INTO Band_Artist (bandId, artistId) VALUES (1, 2);
INSERT INTO Band_Artist (bandId, artistId) VALUES (1, 3);
INSERT INTO Band_Artist (bandId, artistId) VALUES (1, 4);
INSERT INTO Band_Artist (bandId, artistId) VALUES (1, 5);
SELECT * FROM Band_Artist;


-- -------------------------------------------------------- --
-- For displaying web content
-- Not sure how these tables should look

-- For user login and access permissions
-- Insert into Decode_Access
INSERT INTO Decode_Access (accessCode, accessDesc, canRemoveUser, canEditContent, canSubmitContent, canApproveContent) VALUES ('A', 'Administrator', true, true, true, true);
INSERT INTO Decode_Access (accessCode, accessDesc, canRemoveUser, canEditContent, canSubmitContent, canApproveContent) VALUES ('T', 'Trusted', false, true, true, true);
INSERT INTO Decode_Access (accessCode, accessDesc, canRemoveUser, canEditContent, canSubmitContent, canApproveContent) VALUES ('N', 'Normal', false, false, true, false);
SELECT * FROM Decode_Access;

-- Insert into Users
INSERT INTO Users (userName, userPass, userStatus, accessCode) VALUES ('XiongS', 'abc123', 'Current', 'A');
INSERT INTO Users (userName, userPass, userStatus, accessCode) VALUES ('FadeyevT', 'abc123', 'Current', 'A');
INSERT INTO Users (userName, userPass, userStatus, accessCode) VALUES ('HuftA', 'abc123', 'Current', 'A');
SELECT * FROM Users;