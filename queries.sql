-- Vehicle Rental System Assignment
-- Queries and Solutions

-- Table Creation

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    role VARCHAR(20) CHECK (role IN ('Customer', 'Admin'))
);

CREATE TABLE vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    model INT,
    registration_number VARCHAR(50) UNIQUE,
    rental_price INT,         -- changed from NUMERIC(10,2)
    status VARCHAR(30)
);

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(30),
    total_cost INT,           -- changed from NUMERIC(10,2)
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);



-- Sample Data

INSERT INTO users (name, email, phone, role) VALUES
('Alice', 'alice@example.com', '1234567890', 'Customer'),
('Bob', 'bob@example.com', '0987654321', 'Admin'),
('Charlie', 'charlie@example.com', '1122334455', 'Customer');

INSERT INTO vehicles (name, type, model, registration_number, rental_price, status) VALUES
('Toyota Corolla', 'car', 2022, 'ABC-123', 50, 'available'),
('Honda Civic', 'car', 2021, 'DEF-456', 60, 'rented');

INSERT INTO bookings (user_id, vehicle_id, start_date, end_date, status, total_cost) VALUES
(1, 2, '2023-10-01', '2023-10-05', 'completed', 240),
(1, 1, '2023-12-10', '2023-12-12', 'pending', 100);

-- Assignment Queries

-- Query 1: JOIN
SELECT 
    b.booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN vehicles v ON b.vehicle_id = v.vehicle_id
ORDER BY b.booking_id;

-- Query 2: NOT EXISTS
SELECT *
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.vehicle_id
)
ORDER BY v.vehicle_id;

-- Query 3: WHERE
SELECT *
FROM vehicles
WHERE status = 'available'
  AND type = 'car'
ORDER BY vehicle_id;

-- Query 4: GROUP BY & HAVING
SELECT 
    v.name AS vehicle_name,
    COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN vehicles v ON b.vehicle_id = v.vehicle_id
GROUP BY v.name
HAVING COUNT(b.booking_id) > 2
ORDER BY total_bookings DESC;
