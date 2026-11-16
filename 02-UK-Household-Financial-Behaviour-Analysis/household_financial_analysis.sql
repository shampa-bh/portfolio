-- Data inspection

SELECT *
FROM household_finance
LIMIT 10;

-- Regional analysis

SELECT region_name,
       COUNT(*) AS households
FROM household_finance
GROUP BY region_name
ORDER BY households DESC;

-- Income analysis

SELECT income_band,
       COUNT(*) AS households
FROM household_finance
GROUP BY income_band
ORDER BY households DESC;

-- Filtering practice

SELECT *
FROM household_finance
WHERE region_name = 'London'
LIMIT 20;

-- Debt analysis

SELECT region_name,
       ROUND(AVG(total_debt), 2) AS average_debt
FROM household_finance
WHERE total_debt IS NOT NULL
GROUP BY region_name
ORDER BY average_debt DESC;

-- Savings behaviour

SELECT savings_change_name,
       COUNT(*) AS households
FROM household_finance
GROUP BY savings_change_name
ORDER BY households DESC;