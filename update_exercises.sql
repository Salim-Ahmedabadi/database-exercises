USE codeup_test_db;

SELECT 'All albums in your table.!' AS 'Info';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT 'New Albums 10 times more popular!' AS 'Info';
SELECT * FROM albums;



SELECT 'All albums released before 1980!' AS 'Info';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT 'Released albums in the 1800s!' AS 'Info';
SELECT * FROM albums WHERE release_date BETWEEN 1800 AND 1899;


SELECT 'All albums by Michael Jackson!' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'All albums by Michael Jackson changed to Peter Jackson!' AS 'Info';
SELECT * FROM albums WHERE artist = 'Peter Jackson';


