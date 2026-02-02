
-- Description:
-- This SQL file contains queries from in-class
-- exercises and practice activities. Each query
-- includes detailed comments explaining what
-- the query does and why it is used.


SELECT *
FROM Patients;


-- This query selects only the patient_id,
-- first_name, and last_name columns from the
-- Patients table.
-- It is used to retrieve specific information
-- without displaying unnecessary data.
SELECT patient_id, first_name, last_name
FROM Patients;


-- This query selects all patients who are
-- older than 40 years.
-- The WHERE clause filters the data so that
-- only records meeting the condition are returned.
SELECT *
FROM Patients
WHERE age > 40;


-- This query retrieves all patients and
-- sorts them by age in descending order.
-- ORDER BY is used to organize the results
-- from oldest to youngest.
SELECT *
FROM Patients
ORDER BY age DESC;


-- This query counts the total number of
-- patients in the Patients table.
-- COUNT(*) is an aggregate function used
-- to summarize the total number of records.
SELECT COUNT(*) AS total_patients
FROM Patients;


-- This query groups patients by gender and
-- counts how many patients are in each group.
-- GROUP BY is used to analyze differences
-- between categories in the dataset.
SELECT gender, COUNT(*) AS patient_count
FROM Patients
GROUP BY gender;


-- This query filters the grouped results to
-- include only genders with more than 5 patients.
-- HAVING is used instead of WHERE because it
-- filters aggregated data.
SELECT gender, COUNT(*) AS patient_count
FROM Patients
GROUP BY gender
HAVING COUNT(*) > 5;


-- This query selects patients whose last name
-- starts with the letter 'A'.
-- LIKE is used for pattern matching in text fields.
SELECT *
FROM Patients
WHERE last_name LIKE 'A%';


-- This query limits the results to the first
-- five rows in the Patients table.
-- LIMIT is useful when previewing large tables.
SELECT *
FROM Patients
LIMIT 5;
