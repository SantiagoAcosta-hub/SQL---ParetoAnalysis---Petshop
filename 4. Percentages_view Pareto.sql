-- Now we want to see
-- What percentage of the revenue each Customer provided
-- Which customers contributed to the 80% of sales
-- We multiply by 100 and limit to 2 decimal places so we can see the percentages clearer
CREATE OR REPLACE VIEW `pareto-12.paretodemo.Percentages_view`
AS
SELECT
CustomerID,
Customer_revenue,
Cumulative_revenue,
Customer_Rank,
Total_customers,
Total_revenue,
ROUND (Cumulative_revenue / Total_revenue * 100, 2) AS Revenue_percentage,
ROUND (Customer_Rank / Total_customers * 100, 2) AS Customer_percentage
FROM `pareto-12.paretodemo.Cumulative_view`

-- Now we can see what percetage of the revenue is being contributed by X percentage of the customers
SELECT * 
FROM `pareto-12.paretodemo.Percentages_view`
