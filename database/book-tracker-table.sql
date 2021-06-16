BEGIN TRANSACTION;

CREATE TABLE author (

        author_id serial PRIMARY KEY NOT NULL,
        author_name varchar(100) NOT NULL,
        bipoc BOOLEAN DEFAULT FALSE,
        race_ethnicity varchar(50), -- add constraint
        gender varchar(20) NOT NULL -- add constraint
);

ROLLBACK;