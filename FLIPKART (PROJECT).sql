create database flipkarts;
use flipkarts;

-- DIFFERENT PRICE RANGE SEGMENTS FOR MOBILES IN INDIA
SELECT
Brand,
SUM(CASE WHEN MRP BETWEEN 0 AND 9999 THEN 1 ELSE 0 END) AS 'Price Below 10k',
SUM(CASE WHEN MRP BETWEEN 10000 AND 19999 THEN 1 ELSE 0 END) AS 'Price between 10-20k',
SUM(CASE WHEN MRP BETWEEN 20000 AND 39999 THEN 1 ELSE 0 END) AS 'Price between 20-40k',
SUM(CASE WHEN MRP >= 40000 THEN 1 ELSE 0 END) AS 'Price Above 40k'
FROM
mobiles
GROUP BY
Brand
ORDER BY
brand;

--
select brand ,
max(mrp-msp) AS maxDiscount
from
mobiles
group by
brand
order by
maxdiscount desc
limit 1;

-- top 5 brand by average ratings
select brand , avg(ratings) As avg_rating
from mobiles  
group by brand
order by avg_rating desc
limit 5;

-- top 5 brand by total number of reviews
select brand,sum(no_of_reviews) as total_reviews
from mobiles
group by brand
order by total_reviews desc
limit 5;

-- product with ratings greater than 4.5
select * from mobiles
where ratings > 4.5;

-- products with discount greater than 40%
select * from mobiles
where
discount > 40;

-- average ratings and number of reverse per brand
select brand, avg(ratings) AS avg_rating,sum(no_of_reviews) as total_reviews
from mobiles
group by brand
order by avg_rating desc;

-- products with the highest discounts
select * from mobiles
order by discount desc
limit 5;

-- get unique brand names
select distinct brand 
from mobiles; 

--