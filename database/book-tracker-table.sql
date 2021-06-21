BEGIN TRANSACTION;

DROP TABLE IF EXISTS read_book;
DROP TABLE IF EXISTS publisher;
DROP TABLE IF EXISTS genre;
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
        CONSTRAINT CHK_genre_name CHECK (genre_name IN ('Brain Candy', 'Children', 'Classic', 'Contemporary Fiction', 'Dystopian', 'Fantasy', 'General Nonfiction', 'Graphic Novel', 'Historical Fiction', 'Horror', 
                                                        'LGBTQIA+', 'Literary Fiction', 'Mystery', 'Memoirs/Essays', 'Mental Health', 'Middle Grade', 'Other', 'Poetry', 'Post-Apocolyptic Fiction', 'Romance', 'Sci-Fi',
                                                         'Short Stories', 'Thriller', 'Young Adult' ))

);

CREATE TABLE publisher (

        publisher_id serial NOT NULL, --constraint
        publisher_name varchar (100) NOT NULL,
        
        CONSTRAINT pk_publisher PRIMARY KEY (publisher_id)

);

CREATE TABLE read_book (

        book_id serial NOT NULL, --constraint
        title varchar(100) NOT NULL,
        themes varchar(300) NULL,
        debut varchar(100) NOT NULL, --constraint 
        backlist boolean DEFAULT FALSE,
        format varchar(100) NOT NULL, --constraint
        source_read varchar(100) NOT NULL, --constraint
        publication_date date NOT NULL,
        page_count integer NULL,
        audiobook_length integer NULL, --constraint??
         
        
        

);

ROLLBACK;