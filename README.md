
**SQL Data Selection & Filtering | Task 03**

This repository contains the SQL script Querieshealthcare_schema.sql, a comprehensive showcase of fundamental and advanced data retrieval techniques. The script runs a variety of queries against a pre-populated healthcare database to demonstrate how to select, filter, and sort data effectively.

The queries are designed to be practical examples of real-world data analysis tasks.


**Tasks Performed & Concepts Demonstrated**
The Querieshealthcare_schema.sql script is organized into five distinct sections, each focusing on a core SQL concept for data retrieval.

**1. Basic & Specific Data Selection (SELECT)**
This section covers the foundational SELECT statement, demonstrating the difference between retrieving all columns (SELECT *) for a broad overview and selecting specific columns for a targeted, clean dataset.


**2. Conditional Filtering (WHERE, AND, OR)**
Here, the script shows how to filter data to find records that meet specific criteria. It includes examples of:

Using a simple WHERE clause for a single condition.

Combining multiple conditions with AND (where all must be true).

Combining multiple conditions with OR (where any can be true).


**3. Pattern Matching (LIKE)**
This part of the script demonstrates flexible text-based searches using the LIKE operator with wildcards:

%: Matches any sequence of characters (e.g., finding names that start with 'A').

_: Matches any single character (e.g., finding names where 'a' is the second letter).


**4. Range Selection (BETWEEN)**
Queries in this section show how to efficiently select records where a value falls within a specific range. This is applied to:

**Date ranges** (e.g., finding all patients born in the 1980s).

**Numeric ranges** (e.g., selecting doctors with IDs between 3 and 6).


**5. Data Sorting (ORDER BY**)
The final section demonstrates how to organize the query results in a meaningful way. It includes examples of:

**Single-column** sorting in both ascending (ASC) and descending (DESC) order.

**Multi-column** sorting to create a more granular order.

Combining ORDER BY with aggregate functions (COUNT) to produce sorted summary reports, such as listing doctor specializations by popularity.


**How to Use**
Ensure you have the healthcare database and its tables created and populated.

Open the Querieshealthcare_schema.sql file in a MySQL client.

Execute the queries individually to see the results of each data selection and filtering technique
