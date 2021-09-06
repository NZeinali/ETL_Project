DROP TABLE IF EXISTS netflix_movies_country;
DROP TABLE IF EXISTS metadata_movies;
DROP TABLE IF EXISTS imdb_movie_urls;
DROP TABLE IF EXISTS top_rated_imdb_movies;
DROP TABLE IF EXISTS genre1_df;
DROP TABLE IF EXISTS genre2_df;
DROP TABLE IF EXISTS genre3_df;
DROP TABLE IF EXISTS genre4_df;
DROP TABLE IF EXISTS genre5_df;
DROP TABLE IF EXISTS genre6_df;
DROP TABLE IF EXISTS genre7_df;
DROP TABLE IF EXISTS genre8_df;



CREATE TABLE netflix_movies_country(
	movie_title VARCHAR(200) NOT NULL,
	country VARCHAR(200) NOT NULL,
	PRIMARY KEY (movie_title));


CREATE TABLE metadata_movies (
	movie_id INT NOT NULL,
	movie_title VARCHAR(200) NOT NULL,
	PRIMARY KEY (movie_id));
	

CREATE TABLE imdb_movie_urls(
	imdb_id VARCHAR(20) NOT NULL,
	movie_title VARCHAR(200) NOT NULL,
	imdb_url VARCHAR(200) NOT NULL,
	PRIMARY KEY (imdb_id));


CREATE TABLE top_rated_imdb_movies(
	movie_title VARCHAR(200) NOT NULL,
	imdb_rating FLOAT NOT NULL,
	PRIMARY KEY (movie_title));
	

	
CREATE TABLE genre1_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_1 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));
	
CREATE TABLE genre2_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_2 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));
	
CREATE TABLE genre3_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_3 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));
	
CREATE TABLE genre4_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_4 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));
	
CREATE TABLE genre5_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_5 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));

CREATE TABLE genre6_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_6 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));

CREATE TABLE genre7_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_7 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));

CREATE TABLE genre8_df(
	movie_title VARCHAR(200) NOT NULL,
	genre_8 VARCHAR(20) NOT NULL,
	PRIMARY KEY (movie_title));
	
SELECT * FROM genre1_df;