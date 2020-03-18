DROP PROCEDURE IF EXISTS listRecipes;
DELIMITER //
CREATE PROCEDURE listRecipes
(IN argName VARCHAR(255), argType VARCHAR(255))
BEGIN
	IF argType = "want" THEN
		SELECT Recipe.recipeName
		FROM Orders JOIN Recipe
		WHERE orderUser = argName AND Orders.recipeID = Recipe.recipeID AND orderType = False;
	ELSEIF argType = "have" THEN
		SELECT Recipe.recipeName
		FROM Orders JOIN Recipe
		WHERE orderUser = argName AND Orders.recipeID = Recipe.recipeID AND orderType = True;
	ELSE
		SELECT Recipe.recipeName
		FROM Orders JOIN Recipe
		WHERE orderUser = argName AND Orders.recipeID = Recipe.recipeID;
	END IF;
END //
DELIMITER ;


DROP PROCEDURE IF EXISTS createOrder;
DELIMITER //
CREATE PROCEDURE createOrder
(IN argUser VARCHAR(255), argRecipe INT, argBool BOOLEAN)
BEGIN
	INSERT INTO Orders (orderUser, recipeID, orderType, orderDate, orderTime)
    VALUES (argUser, argRecipe, argBool, CURDATE(), CURTIME());
END //
DELIMITER ;

CALL createOrder('Bleikur#4621', 2, True);