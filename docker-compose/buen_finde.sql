DROP TABLE IF EXISTS beers;

CREATE TABLE IF NOT EXISTS beers (
    id SERIAL PRIMARY KEY,
    brand TEXT NOT NULL,
    type TEXT NOT NULL,
    degrees DECIMAL DEFAULT 4.5,
    origin TEXT,
    scoring INTEGER DEFAULT 5,
    established DATE NOT NULL
);

INSERT INTO beers (
    brand, type, degrees, origin, scoring, established
) VALUES 
    ('Guiness', 'black', 6.3, 'Ireland', 7.5, '1759-03-12'),
    ('Alhambra', 'blonde', 6.4, 'Granada', 10, '1925-02-11'),
    ('Estrella Galicia', 'blonde', 5.5, 'Galicia', 10, '1906-05-12');

UPDATE beers
SET degrees = 0
WHERE brand LIKE '%uiness';

DELETE FROM beers
WHERE scoring < 9;