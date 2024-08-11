-- Top selling products across all vending machines
SELECT 
    product_name,
    COUNT(*) as sales_count,
    SUM(amount) as total_revenue
FROM vending_transactions
GROUP BY product_name
ORDER BY sales_count DESC;

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

-- Analyzes sales by brand and type (Powder or Liquid), showing sales count and total revenue for each category.
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

