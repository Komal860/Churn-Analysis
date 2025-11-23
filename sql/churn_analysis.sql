-- Switch to the telecom_churn database
USE telecom_churn;

-- 1. Show all tables
SHOW TABLES;

-- 2. Preview first 10 records of telco_churn
SELECT * FROM telco_churn
LIMIT 10;

-- 3. Overall churn rate
SELECT
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percent
FROM telco_churn;

-- 4. Churn rate by state
SELECT
    State,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY State
ORDER BY churn_rate_percent DESC;

-- 5. Churn rate by InternetService
SELECT
    InternetService,
    ROUND(
        (SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY InternetService
ORDER BY churn_rate_percent DESC;

-- 6. Churn rate by Contract type
SELECT
    Contract,
    ROUND(
        (SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,
        2
    ) AS churn_rate_percent
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- 7. Customers with high tenure who churned
SELECT
    customerID,
    tenure,
    MonthlyCharges,
    TotalCharges
FROM telco_churn
WHERE Churn = 'Yes'
  AND tenure > 36
ORDER BY tenure DESC;

-- 8. Customers contacting support frequently (example, if you have TechSupport column)
SELECT
    customerID,
    TechSupport,
    tenure,
    Churn
FROM telco_churn
WHERE TechSupport = 'Yes';
