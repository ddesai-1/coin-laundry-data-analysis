-- Create the vending_machines table
CREATE TABLE vending_machines (
    vending_machine_id SERIAL PRIMARY KEY,
    location VARCHAR(50),
    installation_date DATE
);

-- Create the vending_inventory table
CREATE TABLE vending_inventory (
    inventory_id SERIAL PRIMARY KEY,
    vending_machine_id INT REFERENCES vending_machines(vending_machine_id),
    product_name VARCHAR(100),
    current_stock INT,
    restock_level INT,
    last_restock_date DATE
);

-- Create the vending-transactions table
CREATE TABLE vending_transactions (
    vending_transaction_id SERIAL PRIMARY KEY,
    vending_machine_id INT REFERENCES vending_machines(vending_machine_id),
    product_name VARCHAR(100),
    purchase_time TIMESTAMP,
    amount DECIMAL(5,2)
);
