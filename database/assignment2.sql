-- Insert values into the account table
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Modify account type to 'Admin'
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;

-- Delete row from table
DELETE FROM account
WHERE account_id = 1;

-- Modify GM Hummer record to read 'a huge interior' instead of 'the small interiors'
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'the small interiors', 'a huge interior')
WHERE inv_id = 10;

-- Use an inner join to select make and model fields from the inventory table and classification table
SELECT c.classification_name, i.inv_make, i.inv_model
FROM public.classification c
	JOIN public.inventory i
	ON c.classification_id = i.classification_id;
	
-- Update all records in inventory table to have /vehicles after /images in inv_image column
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images', '/images/vehicles');

