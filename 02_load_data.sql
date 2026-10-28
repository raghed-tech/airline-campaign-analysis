/*
Project: Airline Campaign Analysis
File: 02_load_data.sql
Purpose: Import the CSV source files into the database.

Before running:
- Update the file paths to locations accessible to the SQL Server Database Engine.
- Run after creating the tables.
- CSV files are expected to have a header row.
- ROWTERMINATOR = '0x0a' was used for the LF line endings observed in the passenger CSV.
*/
USE AirlineCampaignAnalysis;
GO

-- Load passenger records.
BULK INSERT dbo.Passengers
FROM 'C:\Users\lenovo\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\passengers.csv'
WITH
(
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIRSTROW = 2
);
GO

-- Load ticket records.
BULK INSERT dbo.Tickets
FROM 'C:\Users\lenovo\Downloads\tickets_ar.csv'
WITH
(
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIRSTROW = 2
);
GO

-- Verify the number of loaded records.
SELECT COUNT(*) AS PassengerCount FROM dbo.Passengers;
SELECT COUNT(*) AS TicketCount FROM dbo.Tickets;
GO
