select * from pizza_sales;

select sum(total_price) as total_revenue 
from pizza_sales;

select (sum(total_price)/ count(distinct order_id)) as avg_order_value
from pizza_sales;

select sum(quantity) as total_pizza_sold from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as avg_pizza_per_order
from pizza_sales;

select DATENAME(DW,order_date) as order_day,COUNT(distinct order_id) as total_order
from pizza_sales
group by DATENAME(DW,order_date);

select DATENAME(MONTH,order_date) as month_name,COUNT(distinct order_id) as total_order
from pizza_sales
group by DATENAME(MONTH,order_date);

select pizza_category,cast(sum(total_price)/(select sum(total_price) from pizza_sales)*100 as decimal(10,2)) as Percent_TotalSales
from pizza_sales
group by pizza_category;

select pizza_size,cast(sum(total_price)/(select sum(total_price) from pizza_sales)*100 as decimal(10,2)) as Percent_TotalSales
from pizza_sales
group by pizza_size
order by Percent_TotalSales desc;

select pizza_category,sum(quantity) as total_quantity_sold
from pizza_sales
group by pizza_category
order by total_quantity_sold desc;

select top 5 pizza_name,cast(sum(total_price) as decimal(10,2)) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue desc;

select top 5 pizza_name,cast(sum(total_price) as decimal(10,2)) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue asc;

select top 5 pizza_name,cast(sum(quantity) as decimal(10,2)) as toal_quantity_sold
from pizza_sales
group by pizza_name
order by toal_quantity_sold desc;

select top 5 pizza_name,cast(sum(quantity) as decimal(10,2)) as toal_quantity_sold
from pizza_sales
group by pizza_name
order by toal_quantity_sold asc;


select top 5 pizza_name,(count(distinct order_id)) as total_orders
from pizza_sales
group by pizza_name
order by total_orders desc;

select top 5 pizza_name,(count(distinct order_id)) as total_orders
from pizza_sales
group by pizza_name
order by total_orders asc;


