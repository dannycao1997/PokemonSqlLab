-- Directions: Write a query that returns the following collumns:
-- Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
-- Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
-- Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.

SELECT pokemons.name AS "Pokemon's name",  trainers.trainername AS "Trainer's name",  pokemon_trainer.pokelevel AS "Current Level", pt.name AS "Primary Type Name", st.name AS "Secondary Type Name"
FROM pokemon_trainer
JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id
JOIN types AS pt ON pokemons.primary_type = pt.id
JOIN types AS st ON pokemons.secondary_type = st.id
ORDER BY pokemon_trainer.pokelevel DESC limit 100;

-- STRONGEST TRAINER IMO IS "MYTH TRAINER INFIN", HAS THE MOST LEVEL 100 LEGENDARY POKEMONS :)


