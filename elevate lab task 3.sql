SELECT * FROM superstore_db.`sample - superstore`;

SELECT COUNT(*) AS Total_Records
FROM superstore_db.`sample - superstore`;

SELECT SUM(Sales) AS Total_Sales
FROM superstore_db.`sample - superstore`;

SELECT AVG(Sales) AS Average_Sales
FROM superstore_db.`sample - superstore`;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore_db.`sample - superstore`
GROUP BY Category;

SELECT *
FROM superstore_db.`sample - superstore`
WHERE Sales > 1000;

SELECT `Product Name`, Profit
FROM superstore_db.`sample - superstore`
ORDER BY Profit DESC;

SELECT *
FROM superstore_db.`sample - superstore`
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM superstore_db.`sample - superstore`
);

CREATE VIEW HighSales AS
SELECT *
FROM superstore_db.`sample - superstore`
WHERE Sales > 1000;

SHOW INDEX FROM superstore_db.`sample - superstore`;
ALTER TABLE superstore_db.`sample - superstore`
MODIFY Category VARCHAR(50);
CREATE INDEX idx_category
ON superstore_db.`sample - superstore`(Category);