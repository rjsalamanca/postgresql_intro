-- Aggregation and Sorting Queries

-- list restaurants by the closest distance.
SELECT * FROM restaurant ORDER BY distance ASC;

-- list the top 2 restaurants by distance.
SELECT * FROM restaurant ORDER BY distance, stars DESC LIMIT 2;

-- list the top 2 restaurants by stars.
SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT * FROM restaurant WHERE distance < 2 ORDER By stars LIMIT 2; 

-- count the number of restaurants in the db.
SELECT COUNT(id) FROM restaurant;

-- count the number of restaurants by category.
SELECT category, COUNT(category) FROM restaurant GROUP BY category;

-- get the average stars per restaurant by category.
SELECT category, ROUND(AVG(stars),2) FROM restaurant GROUP BY category;

-- get the max stars of a restaurant by category.
SELECT category, ROUND(AVG(stars),2) FROM restaurant GROUP BY category ORDER BY ROUND DESC LIMIT 1;
