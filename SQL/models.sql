CREATE TABLE IF NOT EXISTS Customers (
    id INT PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    status VARCHAR(20) NOT NULL,
    created_date TIMESTAMP,
    updated_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Orders (
    orderId INT PRIMARY KEY,
    customerId INT,
    orderOrigin VARCHAR(100) Not NULL,
    orderValue DECIMAL(10, 2) NOT NULL,
    created_date TIMESTAMP NOT NULL
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

-- Relationship already defined with FOREIGN KEY in Order table

