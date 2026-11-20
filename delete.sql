-- Required to enforce no action when trying to delete an item that is a foreign key
PRAGMA foreign_keys = ON;

-- Fails
DELETE FROM recipes WHERE id = 2;

DELETE FROM recipequantities WHERE recipe_id = 2;

-- Works (after recipequantities with id 2 has been removed)
DELETE FROM recipes WHERE id = 2;
