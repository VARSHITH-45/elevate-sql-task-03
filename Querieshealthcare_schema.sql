-- =================================================================
-- SQL Query Script: Data Selection & Filtering
-- =================================================================
-- This script provides a series of queries to demonstrate how to
-- select, filter, and sort data from the healthcare database.
-- =================================================================
-- Selects the 'healthcare' database to ensure all subsequent commands are run against it.
USE healthcare;
-- =================================================================
-- 1. Using `SELECT *` and Selecting Specific Columns
-- =================================================================

-- Query 1: Get EVERY piece of information for all patients. Like getting the whole cow.
SELECT * FROM Patients;

-- Query 2: Get just the full name and specialty of all doctors. A prime cut, no fat.
SELECT FirstName, SecondName, Specialization FROM Doctors;

-- Query 3: Get all appointment details, but only for appointments with DoctorID 2.
SELECT * FROM Appointments WHERE DoctorID = 2;

-- Query 4: Get a clean list of who has an appointment and when, without all the other details.
SELECT PatientID, AppointmentDateTime, Reason FROM Appointments;


-- =================================================================
-- 2. Filtering with `WHERE`, `AND`, `OR`
-- =================================================================

-- Query 1: Find all doctors who are either a 'Cardiologist' OR a 'Pediatrician'.
SELECT FirstName, SecondName, Specialization FROM Doctors
WHERE Specialization = 'Cardiology' OR Specialization = 'Pediatrics';

-- Query 2: Find all appointments for DoctorID 4 that are also scheduled in November 2025. Both conditions must be true.
SELECT * FROM Appointments
WHERE DoctorID = 4 AND AppointmentDateTime LIKE '2025-11%';

-- Query 3: Find any patient who is either Male OR was born before the year 1975.
SELECT * FROM Patients
WHERE Gender = 'Male' OR DateOfBirth < '1975-01-01';

-- Query 4: Find appointments that are for a 'Health Check-up' AND are for PatientID 1. A very specific cut.
SELECT * FROM Appointments
WHERE Reason = 'Annual Health Check-up' AND PatientID = 1;


-- =================================================================
-- 3. Pattern Matching with `LIKE`
-- =================================================================

-- Query 1: Find all patients whose first name starts with the letter 'A'.
SELECT * FROM Patients WHERE FirstName LIKE 'A%';

-- Query 2: Find all doctors whose email address ends with '@health.in'.
SELECT * FROM Doctors WHERE Email LIKE '%@health.in';

-- Query 3: Find any appointment where the reason contains the word 'Injury'.
SELECT * FROM Appointments WHERE Reason LIKE '%Injury%';

-- Query 4: Find any patient whose last name has 'a' as the second letter (e.g., Patel, Sharma, Malhotra).
SELECT * FROM Patients WHERE SecondName LIKE '_a%';


-- =================================================================
-- 4. Selecting a Range with `BETWEEN`
-- =================================================================

-- Query 1: Find all patients who were born in the 1980s.
SELECT * FROM Patients WHERE DateOfBirth BETWEEN '1980-01-01' AND '1989-12-31';

-- Query 2: Find all appointments scheduled between October 12th and October 15th, 2025.
SELECT * FROM Appointments WHERE AppointmentDateTime BETWEEN '2025-10-12 00:00:00' AND '2025-10-15 23:59:59';

-- Query 3: Find doctors with IDs from 3 to 6.
SELECT * FROM Doctors WHERE DoctorID BETWEEN 3 AND 6;

-- Query 4: Find all patients whose ID is NOT between 4 and 7.
SELECT * FROM Patients WHERE PatientID NOT BETWEEN 4 AND 7;


-- =================================================================
-- 5. Sorting Results with `ORDER BY`
-- =================================================================

-- Query 1: List all patients, but show the youngest ones first. (Sorted by Date of Birth, descending).
SELECT FirstName, SecondName, DateOfBirth FROM Patients ORDER BY DateOfBirth DESC;

-- Query 2: List all doctors, sorted alphabetically by their last name.
SELECT * FROM Doctors ORDER BY SecondName ASC;

-- Query 3: List all appointments, sorted first by the date, and then for appointments on the same day, by PatientID.
SELECT * FROM Appointments ORDER BY AppointmentDateTime ASC, PatientID ASC;

-- Query 4: List all specializations, but show the most common ones at the top. (Grouped, counted, and sorted).
SELECT Specialization, COUNT(*) AS NumberOfDoctors
FROM Doctors
WHERE Specialization IS NOT NULL
GROUP BY Specialization
ORDER BY NumberOfDoctors DESC;

