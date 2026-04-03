CREATE OR REPLACE VIEW `pareto-12.paretodemo.sales_v1`
AS
SELECT CustomerID, SUM(Quantity * Unitprice) AS sales
FROM `pareto-12.paretodemo.sales`
GROUP BY CustomerID

-- To see what we got out of it
SELECT *
FROM `pareto-12.paretodemo.sales_v1`
LIMIT 20




