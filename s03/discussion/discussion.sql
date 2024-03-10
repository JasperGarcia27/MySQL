-- [SECTION] Inserting a Record
-- Syntax:
	-- INSERT INTO table_name (column_name) VALUES (value1);

INSERT INTO artists (name) VALUES ("Paramore");
INSERT INTO artists (name) VALUES ("Kamikazee");

-- Iserting a record with multiple columns
-- Syntax:
	--  INSERT INTO table_name (column_nameA, column_nameB) VALUES (valueA, valueB);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("After Laughter", "2017-05-17", 1);
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Romantico", "2012-03-14", 2);


/*INSERT INTO albums (album_title, date_released, artist_id)
VALUES
  ("Psy 6", "2013-08-15", 1),
  ("Trip", "1996-02-14", 2);*/

-- Songs Table
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Rose-Colored Boy", 333, "ALternative Rock", 1);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kundiman", 524, "OPM", 2), ("Kisapmata", 441, "OPM", 2);

-- Adding multiple records with one query
-- Syntax:
	-- INSERT INTO table_name (column_name, column_name) VALUES (valueA, valueB), (valueA, valueB);

INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Hard Times", 303, "ALternative Rock", 1);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Fake Happy", 356, "ALternative Rock", 1);


-- [SECTION] Selecting Records
-- Showing all record details
-- Syntax:
	-- SELECT * FROM table_name;
	-- (*) means all columns will be shown in the selected table

SELECT "Fake Happy" FROM songs;


-- Show records with selected columns
-- Syntax:
	-- SELECT column_nameA, columnB FROM table_name;

-- Display the title and genre of all songs
SELECT song_name, genre FROM songs;

-- Display album title and data released of all albums
SELECT album_title, date_released FROM albums;

-- Show records that meets a certain condition
-- Syntax:
	-- SELECT column_name FROM table_name WHERE condition
	-- "WHERE" clause is use to filter records and to extract only those records that fulfill a specific conditon

-- Display the title of all the OPM songs
SELECT song_name FROM songs WHERE genre = "OPM"

SELECT song_name FROM songs WHERE length < 400
-- HH:MM:SS
-- 00:04:00

-- Shows records with multiple conditions
-- Syntax:
	-- "AND" clause
		-- SELECT column_name FROM table_name WHERE condition1 AND condition2
	-- "OR" clause
		-- SELECT column_name FROM table_name WHERE condition1 OR condition2
-- Display the title and lenght of the OPM songs that are more than 4 minutes and 30 seconds

SELECT song_name, length FROM songs WHERE genre = "OPM" AND length > 430

/*+--------------------+--------------------+*/

-- [SECTION] Updating records
-- Updating single column of a record
-- Syntax:
	-- UPDATE table_name SET column_name = new_value WHERE condition;

-- Update the length of Kundiman to 4 minutes 24 secs.
UPDATE songs SET length = 424 WHERE song_name = "Kundiman";

-- Check if the song "Kundiman is updated"
SELECT song_name, length FROM songs WHERE song_name = "Kundiman";

-- Updating multiple columns of records
	-- UPDATE table_name SET column_name1 = new_value1, column_name2 = new_value2 WHERE condition;
	-- albums table
		-- Psy 6 > Psy 6 (Six Rules)
		-- 2013-08-15 > 2012-07-15

-- Update the album with a title of Psy 6 and change its title to Psy 6 (Six Rules) and date released to July 15, 2012.

UPDATE albums SET album_title = "Riot", date_released = 20070611 WHERE album_title = "After Laughter";

-- YYYYMMDD
-- 20070611

-- [SECTION] Deleting a record
-- Syntax:
	-- DELETE FROM table_name WHERE condition;
	-- NOTE: Removing "WHERE" clause will remove/delete all rows in the tables

-- Delete all OPM songs that are more than 4 minutes and 30 seconds


DELETE FROM songs WHERE genre = "OPM" AND length > 430;