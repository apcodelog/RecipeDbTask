SELECT
    recipes.id
    recipenumber,
    recipes.name,
    instruction,
    ingredients.name,
    quantity,
    units.name
FROM recipes INNER JOIN recipequantities
    ON recipes.id = recipequantities.recipe_id INNER JOIN ingredients
    on recipequantities.ingredient_id = ingredients.id INNER JOIN units
    on recipequantities.unit_id = units.id;

SELECT
    *
FROM ingredients INNER JOIN units
    ON ingredients.unit_id = units.id INNER JOIN suppliers
    on ingredients.supplier_id = suppliers.id;