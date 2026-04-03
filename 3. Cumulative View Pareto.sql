-- Now we want to see
-- CustomerID, Customer_revenue,revenue rounded, Rank of spending, Total of customers,
-- Cumulative revenue and total revenue ALWAYS NEEDED TO GET % LATER
-- Window options are important to keep the results on every ROW 

CREATE OR REPLACE VIEW `pareto-12.paretodemo.Cumulative_view`
AS
SELECT
 CustomerID,
 Customer_revenue,
  ROUND( 
    SUM(Customer_revenue) OVER (ORDER BY Customer_revenue DESC
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),2) AS Cumulative_revenue,
 ROW_NUMBER() OVER (ORDER BY Customer_revenue DESC) AS Customer_Rank,
 COUNT(*) OVER () AS Total_customers,
 SUM(Customer_revenue) OVER () AS Total_revenue
FROM `pareto-12.paretodemo.Customers_revenue_view`

-- To see what we got out of it
SELECT *
FROM `pareto-12.paretodemo.Cumulative_view`
