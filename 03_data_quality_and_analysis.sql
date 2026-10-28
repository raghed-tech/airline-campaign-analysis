/*
Project: Airline Campaign Analysis
File: 03_data_quality_and_analysis.sql
Purpose:
1. Check ticket-to-passenger relationships.
2. Identify passengers without tickets.
3. Compare campaigns by ticket count and distinct passengers.
4. Explore ticket counts per passenger and campaign.

Note: These checks identify observations for review; they do not automatically
mean the records are errors. Passengers without tickets are retained.
*/
USE AirlineCampaignAnalysis;
GO

/* 1. Find tickets without a matching passenger.
   Expected result: no rows. */
SELECT
    t.TicketID,
    t.PassengerID
FROM dbo.Tickets AS t
LEFT JOIN dbo.Passengers AS p
    ON t.PassengerID = p.PassengerID
WHERE p.PassengerID IS NULL;
GO

/* 2. Find passengers who have no ticket.
   Investigate the meaning of these records before deciding whether they matter. */
SELECT
    p.PassengerID,
    p.Name
FROM dbo.Passengers AS p
LEFT JOIN dbo.Tickets AS t
    ON p.PassengerID = t.PassengerID
WHERE t.TicketID IS NULL;
GO

/* 3. Count tickets per campaign. */
SELECT
    CampaignCode,
    COUNT(TicketID) AS NumberOfTickets
FROM dbo.Tickets
GROUP BY CampaignCode
ORDER BY NumberOfTickets DESC;
GO

/* 4. Count distinct passengers per campaign.
   Each passenger is counted once within each campaign. */
SELECT
    CampaignCode,
    COUNT(DISTINCT PassengerID) AS NumberOfUniquePassengers
FROM dbo.Tickets
GROUP BY CampaignCode
ORDER BY NumberOfUniquePassengers DESC;
GO

/* 5. Compare ticket counts and distinct passengers in one result. */
SELECT
    CampaignCode,
    COUNT(TicketID) AS NumberOfTickets,
    COUNT(DISTINCT PassengerID) AS NumberOfUniquePassengers
FROM dbo.Tickets
GROUP BY CampaignCode
ORDER BY NumberOfTickets DESC;
GO

/* 6. Exploratory: count tickets per passenger within each campaign.
   This is optional and not required for the primary campaign comparison. */
SELECT
    CampaignCode,
    PassengerID,
    COUNT(TicketID) AS NumberOfTicketsForPassenger
FROM dbo.Tickets
GROUP BY CampaignCode, PassengerID
ORDER BY CampaignCode, NumberOfTicketsForPassenger DESC, PassengerID;
GO
