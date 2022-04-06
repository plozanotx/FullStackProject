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
SELECT 'Supreme', 'Special tomato sauce, mozzarella cheese, pepperoni', 55
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Supreme' AND [Description] = 'Special sauce, mozzarella cheese, pepperoni' AND [RetailPrice] = 55)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Meat Primo', 'Special tomato sauce, mozzarella cheese, pepperoni, ham, bacon, chorizo', 60
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Supreme' AND [Description] = 'Special sauce, mozzarella cheese, pepperoni' AND [RetailPrice] = 55)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Hawaiian', 'Special tomato sauce, mozzarella cheese, ham, pineapple', 50
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Supreme' AND [Description] = 'Special sauce, mozzarella cheese, pepperoni' AND [RetailPrice] = 55)

INSERT INTO pizza.Pizzas([Name], [Description], [RetailPrice])
SELECT 'Ham and cheese', 'Special tomato sauce, mozzarella cheese, american ham', 65
WHERE NOT EXISTS (SELECT 1 FROM pizza.Pizzas WHERE [Name] = 'Supreme' AND [Description] = 'Special sauce, mozzarella cheese, pepperoni' AND [RetailPrice] = 55)
