-- Active: 1794994748285@@127.0.0.1@3306


CREATE TABLE units(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(10) UNIQUE
);




CREATE TABLE ingredients(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    itemnumber VARCHAR(30) UNIQUE,
    name VARCHAR(60) NOT NULL,
    price FLOAT NOT NULL,
    supplier_id INTEGER NOT NULL,
    currentquantity FLOAT NOT NULL,
    ordertriggerquantity FLOAT NOT NULL,
    unit_id INTEGER NOT NULL,
    CONSTRAINT fk_supplier FOREIGN KEY(supplier_id) REFERENCES suppliers(id),
    CONSTRAINT fk_unit FOREIGN KEY(unit_id) REFERENCES units(id)
);



CREATE TABLE recipes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    recipenumber VARCHAR(30) UNIQUE,
    name VARCHAR(60) UNIQUE,
    instruction TEXT
);

CREATE TABLE recipequantities(
    recipe_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    unit_id INTEGER NOT NULL,
    quantity FLOAT NOT NULL,
    CONSTRAINT pk_recipequantity PRIMARY KEY(recipe_id,ingredient_id),
    CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES recipes(id),
    CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(id),
    CONSTRAINT fk_unit FOREIGN KEY(unit_id) REFERENCES units(id)
);




CREATE TABLE suppliers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(60) UNIQUE,
    contact_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    CONSTRAINT fk_address FOREIGN KEY(address_id) REFERENCES addresses(id),
    CONSTRAINT fk_contact FOREIGN KEY(contact_id) REFERENCES contacts(id)
);



CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(40) NOT NULL,
    email VARCHAR(128) UNIQUE,
    phone VARCHAR(10) NOT NULL
)