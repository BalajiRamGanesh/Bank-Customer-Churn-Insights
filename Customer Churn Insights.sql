-- Churn rate and Retention rate
SELECT ROUND(SUM(Exited)*100/COUNT(Exited),1) AS churn_rate,
ROUND(SUM(CASE WHEN Exited = 0 THEN 1 ELSE 0 END)*100/COUNT(Exited),1) AS retention_rate
FROM bank_customer_churn;

-- Credit card status percentage
SELECT ROUND(SUM(HasCrCard)*100/COUNT(HasCrCard),2) AS Has_creditcard_percent,
ROUND(SUM(CASE WHEN HasCrCard = 0 THEN 1 ELSE 0 END)*100/COUNT(HasCrCard),2) AS No_creditcard_percent
FROM bank_customer_churn;

-- Active status percnetage
SELECT ROUND(SUM(IsActiveMember)*100/COUNT(IsActiveMember),1) AS Active_members_percent,
ROUND(SUM(CASE WHEN IsActiveMember = 0 THEN 1 ELSE 0 END)*100/COUNT(*),1) AS Inactive_members_percent
FROM bank_customer_churn;

-- Complaints registered percentage
SELECT ROUND(SUM(Complain)*100/COUNT(Complain),1) AS Complaints_percent,
ROUND(SUM(CASE WHEN Complain = 0 THEN 1 ELSE 0 END)*100/COUNT(*),1) AS No_complaints_percent
FROM bank_customer_churn;

-- Customer disrtribution by Number of products purchased
SELECT NumOfProducts, COUNT(*)
FROM bank_customer_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- Customer churn by Gender
SELECT Gender,
CASE WHEN Exited = 1 THEN 'Yes' ELSE 'No' END AS Churn,
COUNT(*)
FROM bank_customer_churn
GROUP BY Gender,Churn;

-- Customer churn by Location
SELECT Geography,
CASE WHEN Exited = 1 THEN 'Yes' ELSE 'No' END AS churn,
COUNT(*)
FROM bank_customer_churn
GROUP BY Geography,Churn
ORDER BY Geography,Churn;

-- Customer distribution by Age via Churn(change name in excel or here)
SELECT
	CASE
		WHEN Age BETWEEN 18 AND 27 THEN '18-27'
        WHEN Age BETWEEN 28 AND 37 THEN '28-37'
        WHEN Age BETWEEN 38 AND 47 THEN '38-47'
        WHEN Age BETWEEN 48 AND 57 THEN '48-57'
        WHEN Age BETWEEN 58 AND 67 THEN '58-67'
        WHEN Age BETWEEN 68 AND 77 THEN '68-77'
        WHEN Age BETWEEN 78 AND 87 THEN '78-87'
        WHEN Age BETWEEN 78 AND 87 THEN '88-97'
        ELSE '97+'
	END AS Age_range,
SUM(
	CASE
		WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
SUM(
	CASE
		WHEN Exited = 0 THEN 1 ELSE 0 END) AS retained_customers
FROM bank_customer_churn
GROUP BY Age_range
ORDER BY Age_range;        
       
-- Churned customers by complaint status
SELECT 
CASE WHEN Complain = 1 THEN 'Yes' ELSE 'No' END AS Complain,
SUM(CASE
	WHEN Exited = 1 THEN 1 ELSE 0 END) AS churn_customer
FROM bank_customer_churn
GROUP BY complain;

-- Ratings by Customers
SELECT `Satisfaction Score`,COUNT(*)
FROM bank_customer_churn
GROUP BY `Satisfaction Score`
ORDER BY `Satisfaction Score`;

-- 	Tenure by Customer distributions
SELECT Tenure,COUNT(*) AS customer_distribution
FROM bank_customer_churn
GROUP BY Tenure
ORDER BY Tenure;