SELECT *
FROM imdb_analysis;

-- 1. Remove Duplicates 
-- 2. standardize the Data
-- 3. Null values or blank values
-- 4. Remove Any Columns 

-- Creating a duplicate dataset called staging using same dataset
CREATE TABLE imdb_analysis_staging
LIKE imdb_analysis;

SELECT *
FROM imdb_analysis_staging;

INSERT imdb_analysis_staging
SELECT *
FROM imdb_analysis;

-- 1. Removing Duplicate 
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY genre, director, actors, year, votes, rating, metascore) AS row_num
FROM imdb_analysis_staging;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY genre, director, actors, year, votes, rating, metascore) AS row_num
FROM imdb_analysis_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;
-- NO Duplicate was found in the dataset
-- But in the case where duplicate values are found this is ustilised 
-- DELETE
-- FROM imdb_analysis_staging
-- WHERE row_num > 1;

SELECT *
FROM imdb_analysis_staging;

-- Standardizing Data
SELECT DISTINCT(Genre)
FROM imdb_analysis_staging;

-- TRIM takes off the wide space 
SELECT Genre, TRIM(Genre)
FROM imdb_analysis_staging;

UPDATE imdb_analysis_staging
SET Genre = TRIM(Genre);

-- SQL Queries
-- 1. Top 5 Highest-Rated Movies by Genre
SELECT 
    Genre,
    Title,
    Rating
FROM imdb_analysis_staging
WHERE Rating IS NOT NULL
ORDER BY Genre, Rating DESC
LIMIT 5;

-- 2. Which genres are the most popular based on average Rating or Votes?
SELECT Genre, AVG(Rating) AS Average_Rating, SUM(Votes) AS Total_Votes
FROM imdb_analysis_staging
GROUP BY Genre
ORDER BY Average_Rating DESC;

-- 3. How has the average Rating of movies changed over the years?
SELECT Year, AVG(Rating) AS Average_Rating
FROM imdb_analysis_staging
GROUP BY Year
ORDER BY Year;

-- 4. What is the relationship between Runtime and Rating?
SELECT Runtime (Minutes), AVG(Rating) AS Average_Rating
FROM imdb_analysis_staging
GROUP BY Runtime (Minutes)
ORDER BY Runtime (Minutes);

-- 5. Are higher Metascores correlated with higher Revenue or Rating?
SELECT Metascore, AVG(Revenue(Millions)) AS Average_Revenue, AVG(Rating) AS Average_Rating
FROM imdb_analysis_staging
GROUP BY Metascore
ORDER BY Metascore;

-- 6. Directors with the highest average ratings 
SELECT 
    Director,
    AVG(Rating) AS Average_Rating,
    COUNT(Title) AS Total_Movies
FROM imdb_analysis_staging
WHERE Rating IS NOT NULL
GROUP BY Director
HAVING COUNT(Title) > 5  -- To filter out directors with only a few movies
ORDER BY Average_Rating DESC
LIMIT 10;

-- 7. Most popular Genre by Year
SELECT 
    Year,
    Genre,
    COUNT(Title) AS Total_Movies
FROM imdb_analysis_staging
GROUP BY Year, Genre
ORDER BY Year, Total_Movies DESC;


-- 8.  Can Rating, Votes, or Metascore predict a movie's success (Revenue)?
SELECT AVG(Rating) AS Average_Rating, AVG(Votes) AS Average_Votes, AVG(Metascore) AS Average_Metascore
FROM imdb_analysis_staging
GROUP BY Rating, Votes, Metascore;











