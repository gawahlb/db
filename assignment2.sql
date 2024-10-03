-- Create Tony Stark account
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starknet.com',
        'Iam1ronM@n'
    );
-- Modify Tony Stark Account Type
UPDATE public.Account
SET account_type = 'Admin'
WHERE account_email = 'tony@starknet.com';
-- Delete Tony Stark Record
DELETE FROM public.account
WHERE account_email = 'tony@starknet.com';
-- Modify GM Hummer record
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'the small interiors',
        'a huge interior'
    )
WHERE inv_model = 'Hummer';
-- Inner join to connect make and model to sport category
SELECT inv_make,
    inv_model,
    classification_name,
    classification.classification_id
FROM public.inventory
    INNER JOIN public.classification ON public.inventory.classification_id = public.classification.classification_id;
WHERE classification_name = 'Sport';
-- Adding /vehicles to all file paths
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, 'images', 'images/vehicles'),
    inv_thumbnail = REPLACE(inv_thumbnail, 'images', 'images/vehicles');