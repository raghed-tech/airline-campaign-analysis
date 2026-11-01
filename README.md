Airline Campaign Analysis

Project Overview

This project analyzes airline campaign ticket data using Microsoft SQL Server and Power BI. It focuses on comparing campaign performance based on ticket records and distinct passengers, validating data relationships, and presenting findings through an interactive dashboard.

Project Objectives

Analyze ticket sales across different campaigns.

Compare ticket counts with distinct passenger counts.

Perform data quality and relationship checks.

Explore passenger demographics and ticket sales trends.

Present key findings through an interactive Power BI dashboard.

Tools & Technologies

Microsoft SQL Server

SQL Server Management Studio (SSMS)

Power BI

DAX

Repository Structure

SQL/01_create_tables.sql — Creates the Passengers and Tickets tables.

SQL/02_load_data.sql — Imports CSV source files.

SQL/03_data_quality_and_analysis.sql — Performs relationship checks and campaign analysis.

PowerBI/ — Contains the Power BI dashboard file.

Screenshots/ — Contains dashboard screenshots.

Power BI Dashboard

The interactive dashboard provides an overview of airline campaign activity through:

Key Performance Indicators (KPIs): Total tickets, unique passengers, and campaign count.

Campaign Comparison: Compares ticket counts and distinct passengers across campaigns.

Sales Trends: Visualizes ticket activity over time.

Passenger Demographics: Explores passenger distribution by age group.

Passenger Details: Displays relevant passenger and ticket information.

Dashboard Preview



Main Measures

Number of Tickets: Counts ticket records by campaign.

Unique Passengers: Counts distinct passenger IDs represented in each campaign.

These measures describe the available dataset. They do not establish profitability or return on campaign spend because campaign costs and revenue are not included.

Preliminary Findings

In the current dataset:

SUMMER2025 recorded the highest ticket count (107).

SUMMER2025 also recorded the highest distinct-passenger count (66).

These findings represent an initial comparison and do not indicate campaign profitability.

How to Run the SQL Scripts

Create the AirlineCampaignAnalysis database in SQL Server.

Run SQL/01_create_tables.sql.

Update the CSV file paths in SQL/02_load_data.sql, then run it.

Run SQL/03_data_quality_and_analysis.sql.

Sharing & Privacy

Do not commit credentials, real personal information, or source files you are not authorized to share. The CSV paths in the loading script are specific to the original author's computer and must be updated on another machine.
