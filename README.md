# vehicle-rental-assignment-3

Overview
This project is a Vehicle Rental System database designed to manage Users, Vehicles, and Bookings.
The database handles real-world scenarios like managing vehicle availability, tracking bookings, and calculating booking statuses. It also demonstrates relational database concepts like primary keys, foreign keys, and relationships between tables.

Database Structure
Tables
Users

id: Primary Key, unique identifier for each user
name: User’s full name
email: Unique email address
password: Account password
phone: Contact number
role: Either admin or customer
Vehicles

id: Primary Key, unique identifier for each vehicle
vehicle_name: Name of the vehicle
vehicle_type: car, bike, or truck
model: Model year
registration_number: Unique registration
rental_price_per_day: Rental price in currency
availability_status: available, rented, or maintenance
Bookings

id: Primary Key, unique booking ID
user_id: Foreign Key → Users.id
vehicle_id: Foreign Key → Vehicles.id
start_date: Booking start date
end_date: Booking end date
booking_status: pending, confirmed, completed, cancelled
total_cost: Total cost of booking
Relationships
One-to-Many: Users → Bookings (a user can have multiple bookings)
Many-to-One: Bookings → Vehicles (each booking is for one vehicle)
One-to-One (Logical): Each booking connects exactly one user and one vehicle
Queries Explanation
Query 1: JOIN

Retrieves booking information along with the customer name and vehicle name.
Demonstrates the use of INNER JOIN to combine data from multiple tables.
Example output includes booking ID, customer name, vehicle name, start date, end date, and status.
Query 2: EXISTS

Finds vehicles that have never been booked.
Uses NOT EXISTS to check for vehicles without corresponding bookings.
Query 3: WHERE

Retrieves all available vehicles of a specific type (e.g., car).
Uses WHERE conditions to filter by availability_status and vehicle_type.
Query 4: GROUP BY and HAVING

Finds the total number of bookings for each vehicle and displays only those vehicles with more than 2 bookings.
Demonstrates GROUP BY to aggregate data and HAVING to filter aggregated results.
Notes
Primary keys ensure uniqueness of records.
Foreign keys maintain relational integrity between tables.
Status fields help track the current state of bookings and vehicle availability.
