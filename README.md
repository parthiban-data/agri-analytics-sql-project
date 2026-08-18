# Agricultural Data Analysis using SQL

## 📌 Project Overview
This project analyzes agricultural data to understand the impact of rainfall, fertilizer usage, and season on crop yield and farmer profit. 
The goal is to help farmers and policymakers make data-driven decisions using SQL.

## 🛠️ Tools & Technologies
- **Database:** MySQL 8.0
- **Tool:** MySQL Workbench
- **Visualization:** Microsoft Excel
- **Concepts Used:** JOIN, GROUP BY, AVG, ORDER BY, LIMIT, Aggregate Functions

## 🗃️ Database Schema
The database `agrianalytics` contains 4 tables:
1. **farmers** - Farmer details like name, district, land_acres
2. **crops** - Crop details like crop_name, season
3. **yield** - Yield data, fertilizer_used, market_price
4. **weather_data** - Rainfall and temperature data

## 📊 Key Insights from Analysis
1. **District wise Yield:** Thanjavur district has the highest Rice yield of 4.5 tons/acre
2. **Weather Impact:** Higher rainfall 120.5mm correlated with higher yield
3. **Fertilizer vs Profit:** Farmers using 90kg fertilizer earned highest income of ₹1,54,000
4. **Season Analysis:** Kharif season crops have better average yield than Rabi
5. **Top Performers:** Top farmer profit recorded was ₹12,32,000

## Database Design
ER Diagram is used to visualize the relationships between Farmers, Crops, Yield, Rainfall, and Fertilizer tables.

## Key Features
- **5 Tables**: Farmers, Crops, Yield, Rainfall, Fertilizer
- **5 SQL Queries**: JOINs, Aggregations, Subqueries for data analysis
- **Insights**: Top profitable crops, low rainfall areas, fertilizer ROI

## Technologies Used
- MySQL
- ER Diagram

## Screenshots
All query outputs are available in the `Screenshots` folder.

## How to Run
1. Import `agri_analytics_sql_project.sql` in MySQL
2. Run the queries and compare with screenshots
