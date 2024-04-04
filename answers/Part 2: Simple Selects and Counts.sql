-- PART 2: SIMPLE SELECTS AND COUNTS "FINISHED"

-- What are all the types of pokemon that a pokemon can have?
SELECT * FROM types;

-- What is the name of the pokemon with id 45?
SELECT * FROM pokemons WHERE id = 45;

-- How many pokemon are there?
SELECT COUNT(id) FROM pokemons;

-- How many types are there?
SELECT COUNT(id) FROM types;

-- How many pokemon have a secondary type?
SELECT COUNT(id) FROM pokemons WHERE secondary_type IS NOT NULL;