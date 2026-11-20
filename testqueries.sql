-- Get a recipe with ingredients and quantites
SELECT
    recipes.id,
    recipenumber,
    recipes.name,
    instruction,
    ingredients.name,
    quantity,
    units.name
FROM recipes INNER JOIN recipequantities
    ON recipes.id = recipequantities.recipe_id INNER JOIN ingredients
    on recipequantities.ingredient_id = ingredients.id INNER JOIN units
    on recipequantities.unit_id = units.id
WHERE recipes.id = 1;

-- Get list of ingredients with supplier name and warning column for current quantity <= order trigger quanity
SELECT
    ingredients.id,
    itemnumber,
    ingredients.name,
    suppliers.name,
    price,
    currentquantity,
    ordertriggerquantity,
    units.name,
    CASE 
        WHEN currentquantity <= ordertriggerquantity THEN '!'
        ELSE ''
    END AS quantitywarning
FROM ingredients INNER JOIN units
    ON ingredients.unit_id = units.id INNER JOIN suppliers
    on ingredients.supplier_id = suppliers.id;

-- Get list of suppliers with contact and address
SELECT
    suppliers.id,
    suppliers.name,
    firstname,
    lastname,
    email,
    phone,
    addressline,
    postalcode,
    cities.name,
    countries.name
FROM suppliers INNER JOIN contacts
    ON suppliers.contact_id = contacts.id INNER JOIN addresses
    ON suppliers.address_id = addresses.id INNER JOIN postalcodes
    ON addresses.postalcode_id = postalcodes.id INNER JOIN cities
    ON postalcodes.city_id = cities.id INNER JOIN countries
    ON cities.country_id = countries.id;

-- Get a supplier and their ingredients with price (returns empty if no ingredients from supplier)
SELECT
    suppliers.id,
    suppliers.name,
    itemnumber,
    ingredients.name,
    price
FROM suppliers INNER JOIN ingredients
    ON suppliers.id == ingredients.supplier_id
WHERE suppliers.id = 2;