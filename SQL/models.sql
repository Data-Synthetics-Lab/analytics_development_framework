CREATE TABLE IF NOT EXISTS Customers (
    id INT PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(100),
    status VARCHAR(20)
    created_date TIMESTAMP
    updated_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Orders (
    orderId INT PRIMARY KEY,
    customerId INT,
    orderOrigin VARCHAR(100)
    orderValue DECIMAL(10, 2),
    created_date TIMESTAMP 
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

-- Relationship already defined with FOREIGN KEY in Order table

