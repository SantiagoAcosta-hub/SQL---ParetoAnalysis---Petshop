-- We create views to save our work 
-- Now we group each Customer ID and the Total revenue gotten from them
-- As well as where they are from
-- Grouping by customer ID
-- Ordering by revenue DESC

CREATE OR REPLACE VIEW `pareto-12.paretodemo.Customers_revenue_view`
AS
SELECT CustomerID,
ROUND (SUM(Quantity * Unitprice),2) AS Customer_revenue,
Country
FROM `pareto-12.paretodemo.sales`
GROUP BY CustomerID, Country
ORDER BY Customer_revenue DESC

-- To see what we got out of it
SELECT *
FROM pareto-12.paretodemo.Customers_revenue_view






