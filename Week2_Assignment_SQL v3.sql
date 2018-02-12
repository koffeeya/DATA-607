-- Read csvs into SQL

DROP TABLE IF EXISTS Films;
DROP TABLE IF EXISTS Reviewers;
DROP TABLE IF EXISTS Ratings;

CREATE TABLE Films (
	FilmID INTEGER PRIMARY KEY,
    Title VARCHAR(50),
    Year INTEGER(4)
    );

LOAD DATA LOCAL INFILE 'C:/Users/jlobr/OneDrive/Learning/_CUNY_SPS_MSDS/2018_Spring/DATA 607/Week 2/Assignment/FilmFilms.csv'
INTO TABLE Films
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS
(FilmID, Title, Year)
;

CREATE TABLE Reviewers (
	ReviewerID INTEGER,
    FirstName VARCHAR(20)
	);
    
LOAD DATA LOCAL INFILE 'C:/Users/jlobr/OneDrive/Learning/_CUNY_SPS_MSDS/2018_Spring/DATA 607/Week 2/Assignment/FilmReviewers.csv'
INTO TABLE Reviewers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS
(ReviewerID, FirstName)
;

CREATE TABLE Ratings (
    FilmID INTEGER,
    Rating INTEGER,
    ReviewerID INTEGER
    );

LOAD DATA LOCAL INFILE 'C:/Users/jlobr/OneDrive/Learning/_CUNY_SPS_MSDS/2018_Spring/DATA 607/Week 2/Assignment/FilmRatings.csv'
INTO TABLE Ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 ROWS
(FilmID, Rating, ReviewerID)
;

-- Check tables populated correctly
SELECT * FROM Films;
SELECT * FROM Reviewers;
SELECT * FROM Ratings;