-- Connect to or create the CarDB database
CONNECT 'jdbc:derby:CarDB;create=true';

-- Drop the table if it already exists to avoid conflicts
DROP TABLE Cars;

-- Create the Cars table
CREATE TABLE Cars (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    make VARCHAR(50),
    model VARCHAR(50),
    manufacture_year INT,
    price DECIMAL(10, 2)
);

-- Insert 30 sample records into the Cars table
INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Toyota', 'Corolla', 2020, 20000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Ford', 'Mustang', 2018, 30000.50);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Honda', 'Civic', 2019, 22000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Chevrolet', 'Camaro', 2021, 35000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('BMW', '3 Series', 2017, 28000.75);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Audi', 'A4', 2016, 27000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Mercedes-Benz', 'C-Class', 2019, 40000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Tesla', 'Model 3', 2021, 50000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Hyundai', 'Elantra', 2018, 19000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Kia', 'Optima', 2020, 21000.50);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Volkswagen', 'Jetta', 2021, 23000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Nissan', 'Altima', 2019, 24000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Mazda', 'Mazda3', 2017, 18000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Subaru', 'Impreza', 2020, 26000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Jeep', 'Wrangler', 2018, 32000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Dodge', 'Charger', 2019, 29000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Volvo', 'S60', 2017, 27000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Porsche', 'Cayenne', 2021, 80000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Ferrari', '488 Spider', 2020, 280000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Lamborghini', 'Huracan', 2021, 300000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Bentley', 'Continental GT', 2020, 220000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Rolls-Royce', 'Phantom', 2021, 450000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Ford', 'Explorer', 2019, 35000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Chevrolet', 'Tahoe', 2020, 60000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('BMW', 'X5', 2021, 65000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Mercedes-Benz', 'GLE', 2020, 70000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Toyota', 'RAV4', 2021, 30000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Honda', 'CR-V', 2020, 32000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Audi', 'Q7', 2021, 75000.00);

INSERT INTO Cars (make, model, manufacture_year, price) 
VALUES ('Lexus', 'RX', 2020, 55000.00);

-- Commit the transaction
COMMIT;

-- Verify the content of the Cars table (optional)
SELECT * FROM Cars;

