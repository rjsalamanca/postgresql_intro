DROP TABLE review_table;
DROP TABLE restaurant_v2;
DROP TABLE reviewer;

CREATE TABLE restaurant_v2 (
    id SERIAL PRIMARY KEY,
    name_resto VARCHAR,
    address_loc VARCHAR,
    category VARCHAR
);

INSERT INTO restaurant_v2
    (name_resto, address_loc, category)
VALUES
    ('The Wild Tree', '844 West Liberty Ave. Westminster, MD 21157', 'bbq'),
    ('The Dapper Violin', '61 Bridge Dr. Montclair, NJ 07042', 'sandwiches'),
    ('The Enigma Deer', '915 Lake St. Middleton, WI 53562', 'bbq'),
    ('The Greek Oriental', '222 Lafayette Street Southaven, MS 38671', 'pizza'),
    ('The Eastern Smith', '275 Ocean Drive New Port Richey, FL 34653', 'wings'),
    ('Shambles', '7785 Vine Lane South Richmond Hill, NY 11419', 'Chinese'),
    ('Whisperwind', '36 Orchard Street Acworth, GA 30101', 'Indian'),
    ('The Turban', '21 Woodland Ave. Manitowoc, WI 54220', 'thai'),
    ('Whammy', '370 West Green Lake Drive Rolla, MO 65401', 'bbq'),
    ('The Nomad', '97 Talbot Street Miami Beach, FL 33139', 'bbq');

SELECT * FROM restaurant_v2;

CREATE TABLE reviewer (
    id SERIAL PRIMARY KEY,
    name_reviewer VARCHAR,
    email VARCHAR,
    karma INT
);

INSERT INTO reviewer
    (name_reviewer, email, karma)
VALUES
    ('Marian Carter','Marian@gmail.com','4'),
    ('Alivia Halliday','Alivia@gmail.com','6'),
    ('Alaya Rivera','Alaya@gmail.com','5'),
    ('Byron Lowery','Byron@gmail.com','6'),
    ('Constance Oconnell','Constance@gmail.com','4'),
    ('Karam Fry','Karam@gmail.com','3'),
    ('Coby Bull','Coby@gmail.com','7'),
    ('Simone Mcneil','Simone@gmail.com','7'),
    ('Josephine Burns','Josephine@gmail.com','1'),
    ('Emma-Louise Person','EmmaL@gmail.com','0');

SELECT * FROM reviewer;

CREATE TABLE review_table (
    id SERIAL,
    reviewer_id INT NOT NULL REFERENCES reviewer(id),
    stars INT,
    title VARCHAR,
    review TEXT,
    restaurant_id INT NOT NULL REFERENCES restaurant_v2 (id),
    PRIMARY KEY (id,reviewer_id,restaurant_id)
);

INSERT INTO review_table
    (reviewer_id, stars, title, review, restaurant_id)
    VALUES
    (8, 2, 'I WISH I HAD', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 2),
    (1, 3, 'I CANT WAIT TO COME BACK', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 8),
    (9, 4, 'TERRIBLE SERVICE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 7),
    (10, 1, 'GREAT PLACE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 4),
    (7, 3, 'DONT GO HERE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 3),
    (4, 5, 'GREAT PLACE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 6),
    (2, 1, 'GREAT PLACE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 9),
    (5, 1, 'TERRIBLE SERVICE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 5),
    (3, 4, 'TERRIBLE SERVICE', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 10),
    (6, 2, 'OUTSTANDING', 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.', 1);

SELECT * FROM review_table;