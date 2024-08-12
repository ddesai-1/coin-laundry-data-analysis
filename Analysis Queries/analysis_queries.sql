/*
This query is used to identify the top-selling products across all vending machines.

Data Aggregation
- COUNT(*) to count the number of sales for each product.
- SUM() to calculate the total revenue for each product
- GROUP BY product_name aggregates the data by product
*/

-- Top selling products across all vending machines
SELECT 
    product_name,
    COUNT(*) as sales_count,
    SUM(amount) as total_revenue
FROM vending_transactions
GROUP BY product_name
ORDER BY sales_count DESC;

/*
This query is used to identify total sales and revenue by weekday

Time-based Analysis
- DAYNAME(purchase_time) is used to extract the day of the week from the purchase_time column

Data Aggregation
- COUNT(*) is used to count the total number of sales for each day of the week
- SUM(amount) is used to calculate the total revenue for each day of the week
- GROUP BY weekday_name is used to aggregate the data by the day of the week. 
*/

--Total sales and revenue by weekday
SELECT 
    DAYNAME(purchase_time) AS weekday_name,
    COUNT(*) AS total_sales_count,
    SUM(amount) AS total_revenue
FROM 
    vending_transactions
GROUP BY 
    weekday_name
ORDER BY 
    total_sales_count DESC;
/*
This query analyzes sales by brand and type (Powder or Liquid), showing sales count and total revenue for each category.

Data Cleaning
- Uses CASE statements to standardize brand names and product types

Data Aggregation
- COUNT(*) is used to count the number of sales for each brand and type of product
- SUM(amount) is used to calculate total revenue for each brand and type of product
- GROUP BY brand, type aggregates the data to these two categories

Consumer Segmentation
- This query segments products by brand (Tide, Gain, All Soap, etc.) and type (Powder or Liquid), which is a form of product segmentation. This segmentation can inform about customer preferences and behavior.

Statistical Calculations:
- This query performs basic statistical calculations (COUNT and SUM)
*/

-- Analyzes sales by brand and type (Powder or Liquid)
SELECT 
    CASE 
        WHEN product_name LIKE '%Tide%' THEN 'Tide'
        WHEN product_name LIKE '%Gain%' THEN 'Gain'
        WHEN product_name LIKE '%All Soap%' THEN 'All Soap'
        WHEN product_name LIKE '%Oxi Clean%' THEN 'Oxi Clean'
        WHEN product_name LIKE '%Foca%' THEN 'Foca'
        WHEN product_name LIKE '%Ariel%' THEN 'Ariel'
        WHEN product_name LIKE '%Suavitel%' THEN 'Suavitel'
        WHEN product_name LIKE '%Clorox%' THEN 'Clorox'
        ELSE 'Other'
    END AS brand,
    CASE
        WHEN product_name LIKE '%Powder%' THEN 'Powder'
        WHEN product_name LIKE '%Liquid%' THEN 'Liquid'
        ELSE 'Other'
    END AS type,
    COUNT(*) AS sales_count,
    SUM(amount) AS total_revenue
FROM 
    vending_transactions
GROUP BY 
    brand, type
ORDER BY 
    brand, type, sales_count DESC;

/*--This query analyzes sales performance by vending machine location

Data Aggregation
- COUNT(*) is used to count the number of sales for each vending machine
- SUM(amount) is used to calculate the total revenue for each vending machine
- GROUP BY vending_machine_id is used to aggregate the data by the vending machine location

Statistical Calculations
- COUNT(*) and SUM(amount) are used to perform simple statistical calculations
*/

-- Sales preformance by vending machine location
SELECT 
    vending_machine_id,
    COUNT(*) AS sales_count,
    SUM(amount) AS total_revenue
FROM 
    vending_transactions
GROUP BY 
    vending_machine_id
ORDER BY 
    sales_count DESC;

/* This query is used to calculate inventory turnover rates

Statistical Calculations
- COUNT() function is used to determine the total number of transactions for each product
- ROUND(COUNT(vt.vending_transaction_id) / vi.current_stock, 2) is a key part of the query to calculate the inventory turnover rate

Data Aggregation
- The query aggregates data by product name and current stock level by using the GROUP BY clause.
*/

-- Inventory turnover rate
SELECT 
    vi.product_name,
    vi.current_stock,
    COUNT(vt.vending_transaction_id) as sales_count,
    ROUND(COUNT(vt.vending_transaction_id) / vi.current_stock, 2) as turnover_rate
FROM vending_inventory vi
LEFT JOIN vending_transactions vt ON vi.product_name = vt.product_name
GROUP BY vi.product_name, vi.current_stock
ORDER BY turnover_rate DESC;

/* This query is used to analyze product preference based on type of detergent, (Powder VS Liquid)

Data Aggregation
- COUNT(*) is used to aggregate the total number of sales for each product type
- SUM(amount) is used to sum up the total revenue by each product type

Statistical Calculations
- The query uses basic statistical calculations to count the number of transactions and sum up the total revenue

Customer Segmentation
-- This query segments by type of detergent (Powder or Liquid), which is a form of product segmentation. This segmentation can inform about customer preferences and behavior.
*/

-- Powder VS Liquid detergent preference
SELECT 
    CASE 
        WHEN product_name LIKE '%Powder%' THEN 'Powder'
        WHEN product_name LIKE '%Liquid%' THEN 'Liquid'
        ELSE 'Other'
    END as product_type,
    COUNT(*) as sales_count,
    SUM(amount) as total_revenue
FROM vending_transactions
WHERE product_name LIKE '%Powder%' OR product_name LIKE '%Liquid%'
GROUP BY product_type
ORDER BY sales_count DESC;

/* This query is used to analyze the top five selling products from the vending machines

-Data Aggregation
- COUNT(*) is used to aggregate the total number of transactions for each product
- SUM(amount) is used to aggregate the total revenue by each product.

-Statistical Calculations
- The query uses basic statistical calculations to count the number of transactions and sum up revenue to give a better statistical measurement for top-selling products. 
*/

-- Top five selling products
SELECT 
    product_name,
    COUNT(*) AS sales_count,
    SUM(amount) AS total_revenue
FROM 
    vending_transactions
GROUP BY 
    product_name
ORDER BY 
    sales_count DESC
LIMIT 5;

