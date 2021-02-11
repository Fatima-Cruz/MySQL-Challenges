DROP DATABASE challenge;
CREATE DATABASE challenge;

USE challenge;


CREATE TABLE veryeasy (
	make VARCHAR(25),
    model VARCHAR(25),
    year INT
);

SELECT * FROM veryeasy;
INSERT INTO veryeasy (make, model ,year)
VALUES
    ('Tesla','Truck', 2021),
	('Punch Buggies', 'Pink', 2022),
	('Lightning McQueen', 'Kachow', 2023);
        
CREATE TABLE easy(
	title VARCHAR(25),
    published DATE,
    author VARCHAR(25)
);
SELECT * FROM easy;
INSERT INTO easy(title, published, author)
VALUES
('My Little Pony', '1999-11-17' ,'Probably a Pony'), 
('Diary of a Wimpy Kid', '2000-01-01' ,'A Wimpy Kid, I think'), 
('Hello Kitty', '1990-02-22','Goodbye Doggy'),
('SpongeBob SquarePants','1999-08-09' ,'Stephen Hillburg'),
('Hannah Montana', '1985-02-14','Miley Cyrus');



CREATE TABLE medium(
	title VARCHAR(50),
    releaseDate DATE,
    rating INT
);
SELECT * FROM medium;
INSERT INTO medium(title, releaseDate, rating)
VALUES
    ('Barbie 1, '1990-01-10' , 4.3),
	('Barbie 2', '19991-02-09' , 3),
    ('Hello Kitty', '1992-03-08' ,9),
    ('Anime Waifus', '1993-04-07' ,5),
    ('Moana, '1994-05-06' ,2),
    ('My Little Pony', '1995-06-05' ,10),
    ('The Incredibles', '1996-07-04' ,8),
    ('SpongeBob SquarePants', '1997-08-03' , 4),
    ('The Powerpuff Girls', '1998-09-02' , 7),
    ('Teen Titans', '1999-10-01' , 12);

CREATE TABLE hard(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(50),
    releaseDate DATE,
    rating INT
);

INSERT INTO hard(title, releaseDate, rating)
VALUES
    ('Barbie 1, '1990-01-10' , 4.3),
	('Barbie 2', '19991-02-09' , 3),
    ('Hello Kitty', '1992-03-08' ,9),
    ('Anime Waifus', '1993-04-07' ,5),
    ('Moana, '1994-05-06' ,2),
    ('My Little Pony', '1995-06-05' ,10),
    ('The Incredibles', '1996-07-04' ,8),
    ('SpongeBob SquarePants', '1997-08-03' , 4),
    ('The Powerpuff Girls', '1998-09-02' , 7),
    ('Teen Titans', '1999-10-01' , 12);

SELECT * FROM hard;

CREATE TABLE veryhard(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	make VARCHAR(25),
    model VARCHAR(25),
    year INT
);

INSERT INTO veryhard (make, model ,year)
VALUES
    ('Tesla','Truck', 2021),
	('Punch Buggies', 'Pink', 2022),
	('Lightning McQueen', 'Kachow', 2023);
        
SELECT * FROM veryhard;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM veryeasy;
INSERT INTO veryeasy (make, model ,year)
VALUES('Race','Car', 2000), ('Sports', 'Car', 1980);


SELECT * FROM easy;
INSERT INTO easy (title, published, author)
VALUES('Romeo and Juliet', '1986-02-29' ,'ShakeSphere'), ('Hamlet', '1999-02-18' ,'William');
DELETE FROM `easy` 
WHERE published IS NOT NULL
ORDER BY published ASC
LIMIT 1;




SELECT * FROM medium WHERE INSTR(title, 's')>0;



ALTER TABLE hard
	ADD COLUMN firstName VARCHAR(25) NOT NULL,
    ADD COLUMN lastName VARCHAR(25) NOT NULL;
    
UPDATE hard
SET firstName= 'Barack', lastName = 'Obama'
WHERE id =1;
    
UPDATE hard
SET firstName= 'George', lastName = 'W.Bush'
WHERE id =2;

UPDATE hard
SET firstName= 'Bill', lastName = 'Clinton'
WHERE id = 3;

UPDATE hard
SET firstName= 'Ronald', lastName = 'Reagan'
WHERE id = 4;

UPDATE hard
SET firstName= 'Jimmy', lastName = 'Carter'
WHERE id = 5;

UPDATE hard
SET firstName= 'Gerald', lastName = 'R Ford'
WHERE id = 6;

UPDATE hard
SET firstName= 'Richard', lastName = 'M. Nixon'
WHERE id = 7;

UPDATE hard
SET firstName= 'John', lastName = 'F Kennedy'
WHERE id = 8;

UPDATE hard
SET firstName= 'Harry', lastName = 'Truman'
WHERE id = 9;

UPDATE hard
SET firstName= 'Franck', lastName = 'Roosevelt'
WHERE id = 10;

SELECT * FROM hard;

SELECT CONCAT(firstName, " ", lastName) AS fullName FROM hard;

SELECT * FROM hard
ORDER BY lastName DESC;

DELETE FROM hard
WHERE lastName BETWEEN "R" AND "Z";

SELECT * FROM hard
ORDER BY lastName DESC
LIMIT 3;


INSERT INTO veryhard(make,model,year)
VALUES
    ('Blue','Car', 2000),
	('Pink', 'Truck', 2020),
	('Purple', 'Vroom', 2016);
        
ALTER TABLE veryhard
	ADD COLUMN price FLOAT(6,2) NOT NULL,
    ADD COLUMN color VARCHAR(25) NOT NULL;

UPDATE veryhard
SET price= 3.99, color = 'Black'
WHERE id = 1;

UPDATE veryhard
SET price= 4.99, color = 'White'
WHERE id = 2;

UPDATE veryhard
SET price= 8.99, color = 'Yellow'
WHERE id = 3;

UPDATE veryhard
SET price= 6.99, color = 'Black'
WHERE id = 4;

UPDATE veryhard
SET price= 10.99, color = 'White'
WHERE id = 5;

UPDATE veryhard
SET price= 18.99, color = 'Yellow'
WHERE id = 6;

SELECT * FROM veryhard;

SELECT CONCAT(make, " ", model) AS make_and_model
FROM veryhard;

SELECT make AS Make, COUNT(make) AS Matched
FROM veryhard
GROUP BY make;
    