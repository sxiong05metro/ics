-- Select statements for ReChord Website --
-- Tables: 	Album
-- 			Song
-- 			Artist
-- 			Band
-- 			Album_Artist
-- 			Band_Artist
-- ------------------------------------- --

use ics325sp20018;

select * from album;
select * from song;
select * from artist;
select * from band;
select * from album_artist;
select * from band_artist;


-- List artists in "The Rolling Stones"
select b.bandName, a.artistName
from artist a
  join band_artist ba on a.artistId = ba.artistId
  join band b on ba.bandId = b.bandId
where b.bandName = 'The Rolling Stones'
;

-- List album for artist "Post Malone"
select ab.albumName
from album ab
  join album_artist aa on ab.albumId = aa.artistId
  join artist ar on aa.artistId = ar.artistId
where ar.artistName = 'Post Malone'
;