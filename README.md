# IMDB Movie Analysis Project

## Overview
This project analyzes IMDB movie data using SQL to derive insights about movie ratings, genres, revenue, and trends. I performed thorough data cleaning, including the removal of duplicates, standardization of values, and handling of missing data, to ensure high-quality, reliable results. The analysis answers key questions about movie performance and predicts future trends in the film industry.

## Project Structure

The project is organized as follows:

- **dataset.csv**: The raw IMDB movie dataset used for analysis.
- **analysis.sql**: SQL queries used for data analysis and to answer the key questions.
- **insights.md**: Summary of insights derived from running the queries, with an explanation of the findings.
- **visualization.png** (optional): Visual representations (e.g., charts, graphs) of the analysis results.

## Data Cleaning and Preprocessing
- **Removed duplicates**
- **standardization of values**
- **handled missing data**

## Key Analysis Performed
After cleaning and preprocessing the data, I performed a series of SQL queries to uncover actionable insights. The key analysis questions I answered included:

- ## **Top 5 Highest-Rated Movies by Genre**
After analyzing the data, the top-rated movies in each genre are as follows:

- **Action:**
  - "Kickboxer: Vengeance" (Rating: 4.9)
- **Action, Adventure:**
  - "The Amazing Spider-Man" (Rating: 7.0)
  - "Spider-Man 3" (Rating: 6.2)
  - "Hercules" (Rating: 6.0)
- **Action, Adventure, Biography:**
  - "The Lost City of Z" (Rating: 7.1)

(Note: The movie "Kickboxer: Vengeance" is the top-rated in the **Action** genre, while the combination of **Action, Adventure** genres includes the highest-rated movie "The Amazing Spider-Man" at a rating of 7.0.)

- ## **Trends in Average Rating Over the Years**
The average rating of movies has fluctuated over the years. Here’s the breakdown of the average ratings by year:

- **2006:** 7.16
- **2007:** 7.14
- **2008:** 6.71
- **2009:** 6.91
- **2010:** 6.89
- **2011:** 6.95
- **2012:** 6.93
- **2013:** 6.83
- **2014:** 6.83
- **2015:** 6.67
- **2016:** 6.64

As seen, there was a **slight decline** in the average ratings of movies after 2007, with a **small dip** around 2015-2016. This could reflect changes in audience preferences, critical reception, or movie production trends.

- ## **The Directors with the highest average ratings**
The following directors have the highest average movie ratings, based on movies with more than 5 releases:

- **David Yates**: Average Rating: 7.43, Total Movies: 6
- **Ridley Scott**: Average Rating: 6.85, Total Movies: 8
- **Michael Bay**: Average Rating: 6.48, Total Movies: 6
- **Paul W.S. Anderson**: Average Rating: 5.77, Total Movies: 6

David Yates leads the list with the highest average rating, reflecting his consistently high-quality films across his portfolio.

- ## **Most Popular Genres by Year**
  
- ## **Can Rating, Votes, or Metascore Predict Movie Success (Revenue)?**

## Visualizations
Using the cleaned and processed dataset, I generated several visualizations to communicate the insights visually.

- **Top-Rated Movies by Genre**
- **Genre Rating Trend Over the Years**
- **Revenue vs. Rating for Movies**
  
## Skills Demonstrated

- **SQL Data Cleaning: Removing duplicates, standardizing data, and handling missing values.**
- **Data Analysis & Aggregation: Using advanced SQL queries to analyze large datasets.**
- **Data Insights: Deriving actionable insights from structured data.**
- **Data Integrity: Ensuring that the dataset used for analysis is clean, consistent, and accurate.**



