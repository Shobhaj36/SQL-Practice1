# SQL-Practice1

Solved SQL queries on constraints, set operators, and joins, written in **SQL Server (T-SQL)**.

## Database Schema

| Table      | Columns |
|------------|---------|
| `salesman` | salesmanId (PK), salesmanName, commission, city (default 'Bangalore'), age |
| `customer` | salesmanId (FK), customerId, customerName (NOT NULL), purchaseAmount |
| `orders`   | orderId, customerId, salesmanId, orderDate, amount |

## Problems Solved

1. Add constraints:
   - Primary key on `SalesmanId` in the Salesman table
   - Default constraint on `City` in the Salesman table
   - Foreign key on `SalesmanId` in the Customer table
   - NOT NULL on `CustomerName` in the Customer table
2. Insert new records into the Orders table
3. Fetch customers whose name ends with 'n' and whose purchase amount is greater than 500
4. Using set operators, retrieve `SalesmanId` values from both tables:
   - Unique values (`UNION`)
   - Including duplicates (`UNION ALL`)
5. Display order date, salesman name, customer name, commission, and city for purchase amounts between 500 and 1500 (multi-table join)
6. Using a right join, fetch all results from the Salesman and Orders tables

## Concepts Covered

- DDL: `CREATE TABLE`, constraints (PK, FK, DEFAULT, NOT NULL)
- DML: `INSERT`
- Filtering: `LIKE`, `BETWEEN`
- Set operators: `UNION`, `UNION ALL`
- Joins: `INNER JOIN`, `RIGHT JOIN`

## How to Run

1. Open SQL Server Management Studio (SSMS) or Azure Data Studio.
2. Open the `.sql` file from this repo.
3. Run the script. It creates the database, tables, and sample data, then runs each query.

## Notes

- Some sample rows in `customer` (salesmanId 107 and 110) have no matching salesman, so a foreign key on those rows needs `WITH NOCHECK`.
- Query 3 returns no rows with the sample data, since no customer name ends in "n".
- The `MONEY` data type is specific to SQL Server and will not work in MySQL or PostgreSQL.

## Tools

SQL Server, T-SQL
