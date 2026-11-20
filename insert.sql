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
    8,
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
),( 
    'L040',
    'Fullkornsmjöl 10kg',
    39.50,
    1,
    15,
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
    'Släng i ingredienserna
Börja knåda
Sedan in i ugnen'
),(
    'B002',
    'Ljus morgon Fullkorn',
    'Släng i ingredienserna
Börja knåda
Sedan in i ugnen'
);

-- Recipe Id 1
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


-- Recipe Id 2
INSERT INTO recipequantities(
    recipe_id,
    ingredient_id,
    unit_id,
    quantity
)VALUES(
    2,
    2,
    1,
    0.5
),(
    2,
    6,
    1,
    0.5
),(
    2,
    5,
    4,
    5
),(
    2,
    3,
    1,
    0.135
),(
    2,
    4,
    1,
    0.09
),(
    2,
    7,
    1,
    7.8
);



INSERT INTO suppliers(
    name,
    contact_id,
    address_id
)VALUES(
    'Lantmännen AB',
    1,
    1
),(
    'Norrmejerier AB',
    2,
    2
),(
    'Fjell Mat AS',
    3,
    3
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
    '+46 70-555 666'
),(
    'Anna',
    'Ek',
    'anna.ek@norrmejerier.test',
    '+46 70-777 888'
),(
    'Hilde',
    'Nygaard',
    'hilde.nygaard@fjellmat.test',
    '+47 400 35 500'
);


INSERT INTO addresses(
    addressline,
    postalcode_id
)VALUES(
    'Norrbygatan 15',
    1
),(
    'Norrlandsvägen 4',
    1
),(
    'Fjordveien 70',
    2
);

INSERT INTO postalcodes(
    postalcode,
    city_id
)VALUES(
    '80015',
    1
),(
    '5003',
    2
);

INSERT INTO cities(
    name,
    country_id
)VALUES(
    'Luleå',
    1
),(
    'Bergen',
    2
);

INSERT INTO countries(
    name
)VALUES(
    'Sweden'
),(
    'Norway'
);