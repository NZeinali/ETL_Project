-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "movies_info" (
    "movie_id" int   NOT NULL,
    "movie_name" varchar   NOT NULL,
    "imdb_id" varchar   NOT NULL,
    CONSTRAINT "pk_movies_info" PRIMARY KEY (
        "movie_name"
     )
);

CREATE TABLE "user_info" (
    "user_id" int   NOT NULL,
    "gender" varchar   NOT NULL,
    "user_occupation" varchar   NOT NULL,
    CONSTRAINT "pk_user_info" PRIMARY KEY (
        "user_id"
     )
);

CREATE TABLE "User_rated_movies" (
    "user_id" int   NOT NULL,
    "rating" int   NOT NULL,
    "timestamp" varchar   NOT NULL,
    "movie_name" varchar   NOT NULL,
    CONSTRAINT "pk_User_rated_movies" PRIMARY KEY (
        "user_id","movie_name"
     ),
    CONSTRAINT "uc_User_rated_movies_rating" UNIQUE (
        "rating"
    )
);

ALTER TABLE "User_rated_movies" ADD CONSTRAINT "fk_User_rated_movies_user_id" FOREIGN KEY("user_id")
REFERENCES "user_info" ("user_id");

ALTER TABLE "User_rated_movies" ADD CONSTRAINT "fk_User_rated_movies_movie_name" FOREIGN KEY("movie_name")
REFERENCES "movies_info" ("movie_name");

