# Vehicle Rental Assignment-3

## Project Overview
This project is a **Vehicle Rental System** that manages customers, vehicles, and bookings.  
It demonstrates the use of **SQL queries** including JOINs, EXISTS, WHERE, GROUP BY, and HAVING.

### Tables
1. **users** – stores customer and admin details
   - Columns: `user_id`, `name`, `email`, `phone`, `role`

2. **vehicles** – stores vehicle details
   - Columns: `vehicle_id`, `name`, `type`, `model`, `registration_number`, `rental_price`, `status`

3. **bookings** – stores booking information
   - Columns: `booking_id`, `user_id`, `vehicle_id`, `start_date`, `end_date`, `status`, `total_cost`

---

## Queries Explanation

### Query 1: JOIN
Retrieve booking information along with **customer name** and **vehicle name**.  
- **Concept Used:** `INNER JOIN`  
- **Expected Output:** booking_id, customer_name, vehicle_name, start_date, end_date, status

---

### Query 2: NOT EXISTS
Find all vehicles that have **never been booked**.  
- **Concept Used:** `NOT EXISTS`  
- **Expected Output:** vehicle_id, name, type, model, registration_number, rental_price, status

---

### Query 3: WHERE
Retrieve all **available vehicles** of a specific type (e.g., cars).  
- **Concept Used:** `SELECT`, `WHERE`  
- **Expected Output:** vehicle_id, name, type, model, registration_number, rental_price, status

---

### Query 4: GROUP BY & HAVING
Find the **total number of bookings** for each vehicle and display only those vehicles that have **more than 2 bookings**.  
- **Concept Used:** `GROUP BY`, `HAVING`, `COUNT`  
- **Expected Output:** vehicle_name, total_bookings



