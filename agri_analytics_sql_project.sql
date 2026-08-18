-- Agricultural Data Analysis Project
-- Tool: MySQL Workbench

-- Query 1: District wise Rice Yield Analysis
SELECT f.district, f.name, y.yield_tons_per_acre, y.market_price_per_ton
FROM yield y
JOIN farmers f ON y.farmer_id = f.farmer_id
JOIN crops c ON y.crop_id = c.crop_id
WHERE c.crop_name = 'Rice';

-- Query 2: Rainfall vs Yield Correlation
SELECT f.district, w.rainfall_mm, w.temperature_c, y.yield_tons_per_acre
FROM yield y
JOIN farmers f ON y.farmer_id = f.farmer_id
JOIN weather_data w ON f.farmer_id = w.farmer_id
ORDER BY y.yield_tons_per_acre DESC;

-- Query 3: Fertilizer vs Income Analysis
SELECT f.name, f.district, y.fertilizer_used_kg, 
       (y.yield_tons_per_acre * y.market_price_per_ton) AS total_income
FROM yield y
JOIN farmers f ON y.farmer_id = f.farmer_id
ORDER BY total_income DESC;

-- Query 4: Season wise Average Yield
SELECT c.season, c.crop_name, AVG(y.yield_tons_per_acre) AS avg_yield
FROM yield y
JOIN crops c ON y.crop_id = c.crop_id
GROUP BY c.season, c.crop_name;

-- Query 5: Top 2 High Profit Farmers
SELECT f.name, f.district, 
       (y.yield_tons_per_acre * y.market_price_per_ton * f.land_acres) AS total_profit
FROM yield y
JOIN farmers f ON y.farmer_id = f.farmer_id
ORDER BY total_profit DESC
LIMIT 2;
