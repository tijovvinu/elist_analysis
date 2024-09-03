--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

-- Created a CTE
  -- Joined the orders table to customers table then customers table to geo lookup table
  -- Filtered the data to include only Macbooks in North America
  -- Date_trunc on purchase columns to collapse dates into quarters

with Avg_Mac_Sales as (
Select date_trunc(purchase_ts, quarter) as purcahse_quarter,
  count(distinct orders.id) as order_count,
  round(sum(orders.usd_price), 2) as sales,
  round(avg(orders.usd_price), 2) as aov
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup 
  on customers.country_code = geo_lookup.country
where region = 'NA' 
and lower(product_name) like '%macbook%'
group by 1
order by 1 desc
)


-- Used the above CTE table to find the average count and sales of all years together
  
Select round(avg(order_count), 2) as avg_quarterly_count,
  round(avg(sales), 2) as avg_quarterly_sales
from Avg_Mac_Sales;




--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver?


-- Joined the orders status table to customers table then customers table to geo lookup table
-- Date diff function to find the difference between purchase time to dilvered time
-- Filterd the data for products purchased on website in 2022 or purchased with mobile in any year

Select geo_lookup.region, 
round(avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)), 2) as time_deliver
from core.orders
left join core.order_status
  on orders.id = order_status.order_id
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup 
  on customers.country_code = geo_lookup.country
where (extract(year from order_status.purchase_ts) = 2022 
and orders.purchase_platform = 'website') or orders.purchase_platform = 'mobile'
group by 1
order by 2 desc;




--3) What was the refund rate and refund count for each product overall? 

-- Find what the specific products are

Select distinct(product_name)
from core.orders;

-- Used a case when to fix formatting to keep consistency
-- Joined the orders table to the order status table
-- Used a case function to create a helper column to find the refund rate and refund count

Select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as products_cleaned,
round(avg(case when refund_ts is null then 0 else 1 end), 2) as refund_rate,
sum(case when refund_ts is null then 0 else 1 end) as refund_count
from core.orders
left join core.order_status
  on orders.id = order_status.order_id
group by 1;




--4) Within each region, what is the most popular product? 

-- Created a CTE
  -- Joined the orders table to customers table then customers table to geo lookup table
  -- Query for the region, product name, and the total orders of each product

    

With total as (
Select region,
  product_name,
  count(distinct orders.id) as total_orders
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on customers.country_code = geo_lookup.country
group by 1,2
order by 1 desc),

-- Created a 2nd CTE
   -- Ranks the query results from the 1st CTE 
  
ranking as (
Select *,
row_number() over(partition by region order by total_orders desc) as order_ranking
from total
order by 4)

-- Query for any results that were ranked 1  from the 2nd CTE
  
Select *
from ranking
where order_ranking = 1;




--5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

-- Joined orders table to customers table
-- Date diff function to find the difference between purchase time to the date of creation of an account to find the number of days to make the first purchase based days and months
-- Filtered the loyalty column to not includde nulls

Select customers.loyalty_program,
  round(avg(date_diff(purchase_ts, created_on, day)), 2) as days_to_purchase,
  round(avg(date_diff(purchase_ts, created_on, month)), 2) as months_to_purchase,
from core.orders
left join core.customers
  on orders.customer_id = customers.id
  where loyalty_program is not null
group by 1;



--6)For each purchase platform, return the top 3 customers by the number of purchases and order them within that platform. If there is a tie, break the tie using any order. 

-- Purchase platform, customer_ID, count of purchases
-- Utilize a CTE to get row numbers/rank column


with Order_count as (
Select purchase_platform,
  customer_id,
  count(distinct orders.id) as total_orders
from core.orders
group by 1,2),
 
rankings as (
Select *,
row_number() over (partition by purchase_platform order by total_orders desc) as ranks
from Order_count)

Select *
from rankings
where ranks <= 3
