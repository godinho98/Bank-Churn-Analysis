-- Checking the bank's overall churn
SELECT ROUND((SUM(Exited)::numeric / COUNT(1)::numeric) * 100,2) AS overall_churn_percentage
    FROM churn

-- Checking if there's a relation between the customer's age and churn
SELECT  CASE WHEN Age > 18 AND Age <= 32
             THEN 'Young_Adults'
             WHEN Age > 32 AND Age <= 37
             THEN 'Prime_Age'
             WHEN Age > 37 AND Age <= 44
             THEN 'Mid_Career'
             ELSE 'Mature_Clients' END AS age_group,
        COUNT(*) AS number_of_clients,
        ROUND((SUM(Exited)::numeric / COUNT(1)::numeric) * 100,2) AS churn_percentage        
    FROM churn
GROUP BY 1
ORDER BY 3 DESC

-- Checking if there's a relation between the customer's balance and churn
SELECT CASE WHEN Balance = 0
            THEN 'zero_balance'
            WHEN Balance > 0 AND Balance <= 25000
            THEN 'low_balance'
            WHEN Balance > 25000 AND Balance <= 50000
            THEN 'med_balance'
            WHEN Balance > 50000 AND Balance <= 75000
            THEN 'avg_balance'
            WHEN Balance > 75000 AND Balance <= 125000
            THEN 'high_balance'
            WHEN Balance > 125000
            THEN 'very_high_balance'
            END AS balance_group,
       COUNT(*) AS number_of_clients,
       ROUND((SUM(Exited)::numeric / COUNT(1)::numeric) * 100, 2) AS churn_percentage       
    FROM churn
GROUP BY 1
ORDER BY 3 DESC

-- Checking if there's a relation between the customer's country and churn
SELECT Geography,
       COUNT(1) AS number_of_clients,
       ROUND((SUM(Exited)::numeric / COUNT(1)::numeric) * 100,2) AS churn_percentage
    FROM churn
GROUP BY 1
ORDER BY 3 DESC

-- Checking if there's a relation between being inactive or active and churn
SELECT CASE WHEN is_active_member = 0
            THEN 'Inactive_member'
            ELSE 'Active_member'
            END AS customer_situation,
       COUNT(*) AS number_of_clients, 
       ROUND((SUM(Exited)::numeric / COUNT(1)::numeric) * 100, 2) AS churn_percentage       
    FROM churn
GROUP BY 1
ORDER BY 3 DESC

-- Deep dive: comparing avg balance and salary between churned and retained mature clients (45+)
-- to determine whether financial profile drives churn in this age group
SELECT CASE WHEN Exited = 0
            THEN 'Stay'
            WHEN Exited = 1
            THEN 'Churn'
            END AS situation,
       ROUND(AVG(balance),2) AS avg_balance,
       ROUND(AVG(estimated_salary),2) AS estimated_salary
    FROM churn 
WHERE Age > 44
GROUP BY 1
ORDER BY 1


