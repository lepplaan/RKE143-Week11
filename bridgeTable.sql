INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (1, 1);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (1, 2);

INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (1, 3);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (1, 4);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (1, 6);

INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 2);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 3);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 4);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 5);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 6);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (2, 7);

INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 1);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 12);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 13);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 14);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 15);
INSERT INTO ingredientinrecipe (recipeid, ingredientid) VALUES (3, 16);


INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'cloves';

INSERT INTO ingredientinrecipe (recipeid, ingredientid) 
SELECT a.id, b.id 
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'egg wash (1 egg beaten with a splash of milk)';

INSERT INTO ingredientinrecipe (recipeid, ingredientid) 
SELECT a.id, b.id 
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientname = 'pumpkin puree';

SELECT a.recipeName, b.ingredientname FROM recipe a 
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;

UPDATE recipe
SET instructions = 
    '<br>Mix pumpkin puree, sugar, and spices in a bowl.
    <br>Roll out the pastry dough and cut it into small circles.
    <br>Fold the dough over to create a half-moon shape and crimp the edges with a fork.
    <br>Brush the pasties with egg wash.
    <br>Bake at 375°F (190°C) for 20-25 minutes or until golden brown.'
WHERE id = 1;

UPDATE recipe
SET instructions = 
    '<br>Mix pumpkin puree, brown sugar, and spices in a bowl.
    <br>Spoon the mixture into mini tart shells.
    <br>Bake at 350°F (175°C) for 15-20 minutes or until set.
    <br>Let cool and garnish with whipped cream.'
WHERE id = 2;

UPDATE recipe
SET instructions = 
    '<br>Sauté the onion and garlic in a pot until soft.
    <br>Add the pumpkin puree and vegetable broth, and simmer for 20 minutes.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Stir in the heavy cream and season with salt and pepper.
    <br>Heat through and serve.'
WHERE id = 3;

ALTER TABLE recipe ADD COLUMN instructions text;

SELECT a.recipeName, a.instructions, b.ingredientName FROM recipe a INNER JOIN IngredientInRecipe c ON a.id = c.recipeId INNER JOIN ingredient b ON b.id = c.ingredientId WHERE a.recipeName = 'Pumpkin Tartlets';
