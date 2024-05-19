SELECT ROUND(SUM(cost),2) AS Cost, project.name from `billing_dataset.enterprise_billing` GROUP BY project.name
