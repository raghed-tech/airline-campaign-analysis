# Airline Campaign Analysis

## Project objective
Compare campaign activity using ticket records and distinct passengers, and perform basic checks on the relationship between passenger and ticket records.

## Tools
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Power BI (reporting stage)

## Repository structure
- `SQL/01_create_tables.sql` — creates the `Passengers` and `Tickets` tables.
- `SQL/02_load_data.sql` — imports CSV source files.
- `SQL/03_data_quality_and_analysis.sql` — relationship checks and campaign analysis.
- `PowerBI/` — intended location for the Power BI report when it is ready.

## Main measures
- **Number of tickets:** ticket records by campaign.
- **Unique passengers:** distinct passenger IDs represented in each campaign.

These measures describe the available dataset. They do not establish profitability or return on campaign spend because campaign costs and revenue are not included.

## Run order
1. Create the `AirlineCampaignAnalysis` database in SQL Server.
2. Run `SQL/01_create_tables.sql`.
3. Update the CSV paths in `SQL/02_load_data.sql`, then run it.
4. Run `SQL/03_data_quality_and_analysis.sql`.

## Sharing and privacy
Do not commit credentials, real personal information, or source files you are not authorized to share. The CSV paths in the loading script are specific to the original author's computer and must be updated on another machine.

## Preliminary result
In the current dataset, `SUMMER2025` has the highest recorded ticket count (107) and highest distinct-passenger count (66). This is an initial comparison, not proof that the campaign was most profitable.
