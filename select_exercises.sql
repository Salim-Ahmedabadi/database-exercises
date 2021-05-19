USE codeup_test_db;
SELECT 'Albums by Pink Floyd!' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released!' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT 'The genre for Nevermind!' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s!' AS 'Info';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;


SELECT 'Which albums had less than 20 million certified sales!' AS 'Info';
SELECT * FROM albums WHERE sales < 20;


SELECT 'All the albums with a genre of "Rock"!' AS 'Info';
SELECT * FROM albums WHERE genre = 'Rock';
