use sales;
select * from sales;

/*extract month*/

SELECT MONTH(sale_date) AS month
FROM sales;

SELECT year(sale_date) AS year
FROM sales; 

/*groupby year or month and sum for revenue*/

SELECT MONTH(sale_date) as sale_month, sum(revenue) AS m_revenue
FROM sales
group by month(sale_date)
order by m_revenue;

SELECT YEAR(sale_date) as sale_year, sum(revenue) AS y_revenue
FROM sales
group by year(sale_date)
order by y_revenue;

/*distinct product id*/
select distinct(product_id)
from sales
order by product_id;

/*limit results*/
SELECT * FROM sales
LIMIT 3;

