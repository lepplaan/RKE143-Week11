DROP TABLE recipe;

CREATE DATABASE myrecipe;

CREATE TABLE recipe (id SERIAL PRIMARY KEY,recipeName VARCHAR(55));

CREATE TABLE ingredient (id SERIAL PRIMARY KEY,ingredientName VARCHAR(55));

CREATE TABLE IngredientInRecipe (id SERIAL PRIMARY KEY,recipeId INTEGER,ingredientId INTEGER,FOREIGN KEY (recipeId) REFERENCES recipe(id),FOREIGN KEY (ingredientId) REFERENCES ingredient(id));

INSERT INTO recipe (recipeName) VALUES ('Pumpkin Pasties');
INSERT INTO recipe (recipeName) VALUES ('Pumpkin Tartlets');
INSERT INTO recipe (recipeName) VALUES ('Creamy Pumpkin Soup');
SELECT * FROM recipe;
DELETE FROM recipe WHERE id = 2;

INSERT INTO ingredient (ingredientName) VALUES ('pumpkin puree');
INSERT INTO ingredient (ingredientName) VALUES ('sugar');
INSERT INTO ingredient (ingredientName) VALUES ('cinnamon');
INSERT INTO ingredient (ingredientName) VALUES ('nutmeg');
INSERT INTO ingredient (ingredientName) VALUES ('cloves');
INSERT INTO ingredient (ingredientName) VALUES ('pastry dough');
INSERT INTO ingredient (ingredientName) VALUES ('egg wash (1 egg beaten with a splash of milk)');
INSERT INTO ingredient (ingredientName) VALUES ('brown sugar');
INSERT INTO ingredient (ingredientName) VALUES ('ginger');
INSERT INTO ingredient (ingredientName) VALUES ('mini tart shells');
INSERT INTO ingredient (ingredientName) VALUES ('whipped cream for garnish');
INSERT INTO ingredient (ingredientName) VALUES ('onion, chopped');
INSERT INTO ingredient (ingredientName) VALUES ('garlic, minced');
INSERT INTO ingredient (ingredientName) VALUES ('vegetable broth');
INSERT INTO ingredient (ingredientName) VALUES ('heavy cream');
INSERT INTO ingredient (ingredientName) VALUES ('salt and pepper to taste');

SELECT * FROM ingredient;

--lists all databases
\l

-- connects to myrecipes database
\c myrecipes

--shows a list of tables
\dt



