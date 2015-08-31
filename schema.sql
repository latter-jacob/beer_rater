DROP TABLE IF EXISTS beers, reviews cascade;

CREATE TABLE beers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  rating int NOT NULL
);

CREATE INDEX beers_name ON beers(name);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  body VARCHAR(255) NOT NULL,
  beer_id INTEGER NOT NULL REFERENCES beers
);
