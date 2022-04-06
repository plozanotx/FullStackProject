/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Supreme', 'Special tomato sauce, mozzarella cheese and pepperoni', 55
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Supreme' AND [Description] = 'Special sauce, mozzarella cheese and pepperoni' AND [RetailPrice] = 55)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Meat Primo', 'Special tomato sauce, mozzarella cheese, pepperoni, ham, bacon and chorizo', 60
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Meat Primo' AND [Description] = 'Special tomato sauce, mozzarella cheese, pepperoni, ham, bacon and chorizo' AND [RetailPrice] = 60)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Hawaiian', 'Special tomato sauce, mozzarella cheese, ham and pineapple', 50
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Hawaiian' AND [Description] = 'Special tomato sauce, mozzarella cheese, ham and pineapple' AND [RetailPrice] = 50)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Ham and Cheese', 'Special tomato sauce, mozzarella cheese and american ham', 65
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Ham and Cheese' AND [Description] = 'Special tomato sauce, mozzarella cheese and american ham' AND [RetailPrice] = 65)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Ham and Corn', 'Tomato spicy sauce, mozzarella cheese, ham and corn', 60
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Ham and Corn' AND [Description] = 'Tomato spicy sauce, mozzarella cheese, ham and corn' AND [RetailPrice] = 60)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Chicken and Corn', 'Special tomato sauce, mozzarella cheese, chicken breast and corn', 65
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Chicken and Corn' AND [Description] = 'Special tomato sauce, mozzarella cheese, chicken breast and corn' AND [RetailPrice] = 65)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Veggie', 'Special tomato sauce, mozzarella cheese, onion, mushrooms and olives', 55
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Veggie' AND [Description] = 'Special tomato sauce, mozzarella cheese, onion, mushrooms and olives' AND [RetailPrice] = 55)
