SELECT name_resto FROM restaurant WHERE stars = 5;
SELECT favorite_dish FROM restaurant WHERE stars = 5;
SELECT id FROM restaurant WHERE name_resto = 'Taco Bell';
SELECT * FROM restaurant WHERE category = 'Mex';
SELECT * FROM restaurant WHERE takeout = true;
SELECT * FROM restaurant WHERE takeout = true AND category = 'Mex';
SELECT * FROM restaurant WHERE distance < 2;
SELECT * FROM restaurant WHERE last_date < CURRENT_DATE - 1506;
SELECT * FROM restaurant WHERE last_date < CURRENT_DATE - 1506 AND stars = 5;
