# PostgreSQL Exercises

## Layout
    id |         name_resto         | distance | stars |  category  |             favorite_dish              | takeout | last_date  
    ----+----------------------------+----------+-------+------------+----------------------------------------+---------+------------
    1 | The Wild Tree              |        4 |     1 | dim sum    | Chicken Tikka Masala                   | f       | 2019-01-26
    2 | The Dapper Violin          |        4 |     2 | mexican    | Cucumber Sandwiches                    | t       | 2019-03-17
    3 | The Enigma Deer            |        8 |     1 | mexican    | Porridge                               | f       | 2019-03-15
    4 | The Greek Oriental         |       10 |     4 | bbq        | Goulash                                | f       | 2019-01-21
    5 | The Eastern Smith          |        0 |     3 | wings      | Chicken Noodle Soup                    | f       | 2019-01-03
    6 | Shambles                   |        4 |     4 | american   | Schnitzel                              | f       | 2019-04-10
    7 | Whisperwind                |        3 |     1 | american   | Spaetzle                               | f       | 2019-05-04
    8 | The Turban                 |        1 |     5 | sushi      | Paella                                 | t       | 2019-05-18
    9 | Whammy                     |        9 |     3 | dim sum    | Curry                                  | t       | 2019-02-25
    10 | The Nomad                  |        6 |     4 | sushi      | Sweet & Sour Chicken (Cantonese Style) | t       | 2019-03-27
    11 | The First Chef             |        2 |     2 | dim sum    | Steak                                  | f       | 2019-01-16
    12 | The Western Trumpet        |        0 |     5 | mexican    | Fried Egg                              | f       | 2019-04-23
    13 | The Lunar Boar             |       10 |     1 | sea food   | Duck                                   | t       | 2019-05-17
    14 | The Vanilla Moments        |        5 |     3 | sushi      | Australian Meat Pie                    | f       | 2019-03-30
    15 | The Kings Tiger            |        0 |     4 | american   | Gazpacho                               | t       | 2019-05-18
    16 | Alpha                      |        2 |     2 | wings      | Quesadilla                             | t       | 2019-01-19
    17 | Carnival                   |        8 |     5 | sushi      | Wrap                                   | t       | 2019-03-10
    18 | Chance                     |        3 |     5 | wings      | Hollandaise Sauce                      | f       | 2019-04-02
    19 | Citrus                     |        1 |     1 | sushi      | Chili                                  | f       | 2019-05-11
    20 | Midnight                   |        9 |     4 | sandwiches | French Toast                           | f       | 2019-01-26
    21 | The Caribbean Bay          |        8 |     5 | dim sum    | Spaghetti Bolognese                    | t       | 2019-02-26
    22 | The Coriander Street       |        0 |     4 | Indian     | Ratatouille                            | f       | 2019-01-16
    23 | The Pearl Clove            |        4 |     5 | bbq        | Bangers & Mash                         | t       | 2019-02-08
    24 | The Jazz Pond              |       10 |     2 | sandwiches | Chili                                  | t       | 2019-01-09
    25 | The Court Boar             |        3 |     4 | mexican    | Gyros                                  | f       | 2019-03-11
    26 | Splash                     |        8 |     2 | american   | Scallops                               | f       | 2019-03-31
    27 | The Cane                   |        7 |     3 | bbq        | Chicken Noodle Soup                    | f       | 2019-05-18
    28 | Lavender                   |        0 |     2 | pizza      | Bratkartoffeln                         | t       | 2019-05-22
    29 | Aroma                      |        2 |     3 | american   | Souvlaki                               | t       | 2019-05-14
    30 | Kings                      |        1 |     1 | pizza      | Steak Pie                              | t       | 2019-04-13
    31 | The Sumo Garden            |        2 |     2 | wings      | Roast Beef                             | f       | 2019-02-26
    32 | The Amber Beehive          |        5 |     3 | mexican    | Tacos                                  | t       | 2019-02-07
    33 | The Fiery God              |        6 |     1 | mexican    | Baked Beans                            | t       | 2019-03-17
    34 | The Gallery Exchange       |        5 |     4 | american   | Fried Egg                              | t       | 2019-05-11
    35 | The Tandoori Cuisine       |        8 |     3 | mexican    | Aioli                                  | f       | 2019-02-21
    36 | Salutation                 |        6 |     5 | dim sum    | Risotto                                | f       | 2019-04-11
    37 | Blueprint                  |        0 |     4 | sandwiches | French Toast                           | t       | 2019-05-11
    38 | The Maple                  |        9 |     4 | wings      | Curry                                  | t       | 2019-03-28
    39 | Whammy                     |        9 |     2 | sushi      | Gazpacho                               | f       | 2019-04-03
    40 | The Pearl                  |        2 |     1 | Chinese    | Quesadilla                             | f       | 2019-05-02
    41 | The Waterway Goddess       |        2 |     4 | Chinese    | Mashed Potato                          | t       | 2019-04-12
    42 | The Meadow Kitchen         |        5 |     5 | thai       | Macaroni Salad                         | t       | 2019-02-04
    43 | The Nifty Road             |        3 |     5 | bbq        | Tacos                                  | t       | 2019-02-09
    44 | The Incredible Mockingbird |        2 |     1 | mexican    | Baked Beans                            | t       | 2019-02-06
    45 | The Sushi Window           |        8 |     1 | sushi      | Fried Egg                              | t       | 2019-01-13
    46 | Salutation                 |        7 |     3 | bbq        | Aioli                                  | t       | 2019-01-07
    47 | The Wall                   |        8 |     2 | thai       | Risotto                                | t       | 2019-04-24
    48 | Recess                     |        8 |     2 | thai       | French Toast                           | t       | 2019-04-07
    49 | Nova                       |        3 |     2 | dim sum    | Curry                                  | t       | 2019-02-01
    50 | Little China               |        6 |     4 | Indian     | Gazpacho                               | t       | 2019-01-04

## Writing Queries

Write queries to get

1. The names of the restaurants that you gave a 5 stars to
2. The favorite dishes of all 5-star restaurants
3. The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
4. restaurants in the category of 'BBQ'
5. restaurants that do take out
6. restaurants that do take out and is in the category of 'BBQ'
7. restaurants within 2 miles
8. restaurants you haven't ate at in the last week
9. restaurants you haven't ate at in the last week and has 5 stars

* Solutions stored in query1.sql *

## Aggregation and Sorting Queries

1. list restaurants by the closest distance.
2. list the top 2 restaurants by distance.
3. list the top 2 restaurants by stars.
4. list the top 2 restaurants by stars where the distance is less than 2 miles.
5. count the number of restaurants in the db.
6. count the number of restaurants by category.
7. get the average stars per restaurant by category.
8. get the max stars of a restaurant by category.

* Solutions stored in query2.sql *