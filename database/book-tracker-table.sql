BEGIN TRANSACTION;


DROP TABLE IF EXISTS recommendation;
DROP TABLE IF EXISTS author;

CREATE TABLE author (

        author_id serial NOT NULL, -- constraint
        author_name varchar(100) NOT NULL,
        bipoc BOOLEAN DEFAULT FALSE,
        race_ethnicity varchar(50) NOT NULL, -- constraint
        gender varchar(20) NOT NULL, -- constraint
        
        CONSTRAINT pk_author PRIMARY KEY (author_id),
        CONSTRAINT CHK_race_ethnicity CHECK (race_ethnicity IN ('American Indian or Alaska Native', 'Black or African American', 'Hispanic or Latino', 'Middle Eastern', 'Native Hawaiian or Other Pacific Islander', 'White') ),
        CONSTRAINT CHK_gender CHECK (gender IN ('Female', 'Male', 'Non-binary', 'Transgender'))

);

CREATE TABLE recommendation (
        
        recommendation_id serial NOT NULL, -- constraint
        recommendation_name varchar(100) NOT NULL,
        notes varchar(300) NULL,
        
        CONSTRAINT pk_recommendation PRIMARY KEY (recommendation_id)

);

CREATE TABLE genre (

        genre_id serial NOT NULL, --constraint
        genre_name varchar(100) NOT NULL, --constraint
        
        CONSTRAINT pk_genre PRIMARY KEY (genre_id),
        
        


);

ROLLBACK;