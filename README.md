# vehicle-rental-assignment-3

## Project Overview
This project is designed to manage a vehicle rental system. It includes 3 tables:
- `users` – stores customer and admin details
- `vehicles` – stores all vehicle information
- `bookings` – stores booking details

## Queries Explanation

### Query 1: JOIN
Retrieve booking information along with customer name and vehicle name.
- Concept: `INNER JOIN`
- Shows booking_id, customer_name, vehicle_name, start_date, end_date, status

### Query 2: NOT EXISTS
Find all vehicles that have never been booked.
- Concept: `NOT EXISTS`
- Filters vehicles with no bookings

### Query 3: WHERE
Retrieve all available vehicles of a specific type (e.g., cars)
- Concept: `SELECT`, `WHERE`
- Filters vehicles by type and availability

### Query 4: GROUP BY & HAVING
Find total bookings for each vehicle and display only vehicles with more than 2 bookings
- Concept: `GROUP BY`, `HAVING`, `COUNT`
- Helps identify most booked vehicles

## Submission Links
- GitHub Repo:
- ERD Link: [Your ERD Link]
- Viva Video Link: [Your Viva Video Link]
