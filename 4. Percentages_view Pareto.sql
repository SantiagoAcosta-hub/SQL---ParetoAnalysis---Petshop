CREATE OR REPLACE VIEW `pareto-12.paretodemo.Cumulative_percentages_view`
AS
SELECT
CustomerID, Customer_revenue,
 ROUND (Customer_revenue, 2) AS Customer_revenue_rounded,
  ROUND (
  SUM(Customer_revenue) OVER (ORDER BY Customer_revenue DESC
 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
 2) AS Cumulative_revenue,
 ROW_NUMBER() OVER (ORDER BY Customer_revenue DESC) AS Customer_Rank,
 COUNT(*) OVER () AS Total_customers,
 SUM(Customer_revenue) OVER () AS Total_revenue
FROM `pareto-12.paretodemo.Cumulative_view`
