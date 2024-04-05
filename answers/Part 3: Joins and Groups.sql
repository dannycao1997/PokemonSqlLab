-- PART 3: JOINS AND GROUPS "FINISHED"

-- What is each pokemon's primary type?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types
ON pokemons.primary_type = types.id;

-- What is Rufflet's secondary type?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types
ON pokemons.Secondary_type = types.id
WHERE pokemons.name = 'Rufflet';

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name
from pokemons
JOIN trainers
ON pokemons.id = trainers.trainerID
WHERE trainerID = 303;

-- How many pokemon have a secondary type Poison?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types
ON pokemons.secondary_type = types.id
WHERE types.name = 'Poison';

-- What are all the primary types and how many pokemon have that type?
SELECT COUNT(pokemons.name)
AS Pokemon_Count, types.name
AS Primary_Types
FROM pokemons
JOIN types
ON pokemons.primary_type = types.id
GROUP BY primary_type;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(*) AS Level_100_Pokemons_Per_Trainer
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP by trainerID;

-- How many pokemon only belong to one trainer and no other?
SELECT COUNT(*) as Pokemons_That_Only_Belong_To_One_Trainer
FROM(SELECT pokemon_id FROM pokemon_trainer GROUP BY pokemon_trainer.pokemon_id HAVING COUNT( pokemon_trainer.pokemon_id) = 1)
AS single_trainer_one_pokemon;

