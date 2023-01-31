GO
USE master
GO



-- create alter drop is database definition language (ddl) 


IF DB_ID ('RoskildeDB') IS NOT NULL
	BEGIN 
	ALTER DATABASE RoskildeDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE RoskildeDB
	END

CREATE DATABASE RoskildeDB

GO
USE RoskildeDB


CREATE TABLE Artist (
id INT IDENTITY(1,1),
[Name]NVARCHAR(100)  
)

CREATE TABLE Scene (
id INT IDENTITY(1,1),
[Name]NVARCHAR(100)  
)

CREATE TABLE Schedule (
id INT IDENTITY(1,1),
[Time]DATETIME,
-- ARTIST
ArtistId INT, 
-- SCENE
SceneId INT
)


--Insert into, update, delete database manipulation language (DML) 
INSERT INTO Artist ([Name]) VALUES ('Lil Nas X') 
INSERT INTO Artist ([Name]) VALUES ('Rosalía') 
INSERT INTO Artist ([Name]) VALUES ('Blur') 
INSERT INTO Artist ([Name]) VALUES ('Tobias Rahim')
INSERT INTO Artist ([Name]) VALUES ('Alice Glass')
INSERT INTO Artist ([Name]) VALUES ('Rina Sawayama')
INSERT INTO Artist ([Name]) VALUES ('KESI')


INSERT INTO Scene ([Name]) VALUES ('Orange') 
INSERT INTO Scene ([Name]) VALUES ('Arena') 
INSERT INTO Scene ([Name]) VALUES ('Apollo') 


INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-01 21:00:00', 1, 1)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-01 20:00:00', 2, 2)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-02 21:00:00', 3, 1)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-02 21:00:00', 4, 2)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-02 21:40:00', 5, 1)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-02 21:00:00', 6, 3)
INSERT INTO Schedule ([Time], ArtistId, SceneId) VALUES('2023-07-02 12:00:00', 7, 1)


SELECT * FROM Scene;
SELECT * FROM Artist;
SELECT * FROM Schedule;
SELECT DISTINCT [Time] FROM Schedule; --Now you can see what concerts you can attend :^) 