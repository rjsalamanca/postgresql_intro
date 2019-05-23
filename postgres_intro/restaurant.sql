DROP TABLE restaurant;

CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    name_resto VARCHAR,
    distance INT,
    stars INT,
    category VARCHAR,
    favorite_dish VARCHAR,
    takeout BOOLEAN,
    last_date DATE 
);

INSERT INTO restaurant
    (name_resto, distance, stars, category, favorite_dish, takeout, last_date)
VALUES
    ('Taco Bell', 5, 4, 'Mexican', 'Tacos', true, '1999-1-08'),
    ('McDonalds', 2, 1, 'American', 'Burger', true, '2000-1-8'),
    ('Chipotle', 0, 5, 'Mex', 'Burrito', false, '2015-4-9'),
    ('Chick-Fil-A', 1, 5, 'Mex', 'Tacos', true, '2001-4-9');

SELECT * FROM restaurant;