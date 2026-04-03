-- Now we want to see
-- Variable assignation to prove our 80/20 paleto method
-- Set our variable to 80% of sales
-- ADD ; after variable

DECLARE Target_sales FLOAT64 DEFAULT 80;
SELECT *
FROM `pareto-12.paretodemo.Percentages_view`
WHERE Revenue_percentage >= Target_sales
LIMIT 1

-- Now we know after that customer 1167 is where the remaining 20% is located
-- And that 57% of our customers represent 80% of our sales
