CREATE OR REPLACE VIEW `pareto-12.paretodemo.Cumulativeview`
AS
SELECT
CustomerID, Customer_revenue, ROW_NUMBER() OVER (ORDER BY Customer_revenue DESC) AS Cumulative_costumers
FROM `pareto-12.paretodemo.CustomerID_revenue`

SELECT *
FROM `pareto-12.paretodemo.Cumulativeview`