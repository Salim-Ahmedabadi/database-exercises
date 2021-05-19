USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
--     id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50),
    name         VARCHAR(50),
    release_date SMALLINT UNSIGNED,
    genre        VARCHAR(100),
    sales        FLOAT (M,D),
    PRIMARY KEY (id)
);
