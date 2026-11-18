INSERT INTO units(
    name
)VALUES(
    'kg'
),(
    'st'
),(
    'frp'
),(
    'l'
);


INSERT INTO ingredients(
    itemnumber,
    name,
    price,
    supplier_id,
    currentquantity,
    ordertriggerquantity,
    unit_id
)VALUES(
    'L001',
    'Mjöl 10kg',
    49.50,
    1,
    15,
    5,
    3
),(
    'L300',
    'Jäst 50g',
    3.00,
    1,
    32,
    10,
    3
),(
    'L301',
    'Socker 5kg',
    29.95,
    1,
    22,
    10,
    3
),(
    'L330',
    'Salt 1kg',
    19.95,
    1,
    7,
    2,
    3
),(
    'N020',
    'Mjölk 1,5l',
    16.95,
    2,
    5,
    3,
    3
),(
    'N230',
    'Smör 1kg',
    50,
    2,
    8,
    5,
    3
);

INSERT INTO recipes(
    recipenumber,
    name,
    instruction
)VALUES(
    'B001',
    'Ljus morgon',
    'Släng i ingredienserna och börja knåda och sedan in i ugnen'
);

INSERT INTO recipequantities(
    recipe_id,
    ingredient_id,
    unit_id,
    quantity
)VALUES(
    1,
    2,
    1,
    0.5
),(
    1,
    6,
    1,
    0.5
),(
    1,
    5,
    4,
    5
),(
    1,
    3,
    1,
    0.135
),(
    1,
    4,
    1,
    0.09
),(
    1,
    1,
    1,
    7.8
);




INSERT INTO suppliers(
    name,
    contact_id,
    address_id
)VALUES(
    'Lantmännen',
    1,
    1
),(
    'Norrmejerier',
    2,
    2
);

INSERT INTO contacts(
    firstname,
    lastname,
    email,
    phone
)VALUES(
    'Erik',
    'Svensson',
    'erik.svensson@lantmannen.test',
    '070-555 666'
),(
    'Anna',
    'Ek',
    'anna.ek@norrmejerier.test',
    '070-777 888'
);