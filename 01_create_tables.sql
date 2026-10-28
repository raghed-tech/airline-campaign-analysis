/*
Project: Airline Campaign Analysis
File: 01_create_tables.sql
Purpose: Create the database tables and their relationship.

Prerequisite: Create AirlineCampaignAnalysis in SQL Server before running this script.
*/
USE AirlineCampaignAnalysis;
GO

-- Create the passenger master table.
CREATE TABLE dbo.Passengers
(
    PassengerID NVARCHAR(60) NOT NULL PRIMARY KEY,
    Name        NVARCHAR(50) NULL,
    Age         INT NULL,
    ContactInfo NVARCHAR(260) NULL
);
GO

-- Create the ticket table and link each ticket to a passenger.
CREATE TABLE dbo.Tickets
(
    TicketID     INT NOT NULL PRIMARY KEY,
    PassengerID  NVARCHAR(60) NOT NULL,
    FlightNumber NVARCHAR(50) NULL,
    CampaignCode NVARCHAR(60) NULL,
    PurchaseDate DATE NULL,
    CONSTRAINT FK_Tickets_Passengers
        FOREIGN KEY (PassengerID)
        REFERENCES dbo.Passengers(PassengerID)
);
GO
