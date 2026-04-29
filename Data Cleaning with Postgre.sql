-- Check how many rows in the data
SELECT * FROM "Market_Basket_Analysis_Preparation";
-- 1,514,430 rows

-- Check for redundant data 
SELECT * FROM "Market_Basket_Analysis_Preparation"
WHERE "INV SALES-CTN" <= 0;
-- 176,080 rows

-- Join with Master Data
SELECT *
FROM "Market_Basket_Analysis_Preparation" mb
LEFT JOIN "Master_Data" md
ON mb."SKU No" = md."SKU No";

-- Check if there is one SKU have more than one line in a single order
SELECT DISTINCT
    mb."ORDER NUMBER",
    mb."SKU No",
    mb."Desc",
    mb."INVOICEDATE",
    mb."CUST_ID1"
FROM "Market_Basket_Analysis_Preparation" mb
JOIN "Master_Data" md
  ON mb."SKU No" = md."SKU No"
WHERE mb."INV SALES-CTN" > 0 
  AND md."Active" = 'Active'
ORDER BY mb."ORDER NUMBER";
-- 648,364 rows remain

-- Export the cleaned data
CREATE OR REPLACE VIEW Out_cleaned AS
SELECT DISTINCT
    mb."ORDER NUMBER",
    mb."SKU No",
    mb."Desc"
FROM "Market_Basket_Analysis_Preparation" mb
JOIN "Master_Data" md
  ON mb."SKU No" = md."SKU No"
WHERE mb."INV SALES-CTN" > 0 
  AND md."Active" = 'Active'
ORDER BY mb."ORDER NUMBER";