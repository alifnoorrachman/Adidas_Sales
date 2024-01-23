select * from adidas_sales

-- Total Sales
select sum(total_sales) as total_sales
from adidas_sales;

-- Total Unit Sold
select round(sum(units_sold)) as total_unit_sold
from adidas_sales;

-- Total Penjualan per Retailer
select retailer, sum(total_sales) as total_sales
from adidas_sales
group by retailer;

-- Profitabilitas Produk (Margin Operasional)
select product,avg(operating_margin) as average_margin
from adidas_sales
group by product;

-- Penjualan per Wilayah
select region, sum(total_sales) as total_sales
from adidas_Sales
group by region
order by total_sales desc;

-- Metode Penjualan
select sales_method, sum(total_sales) as total_sales
from adidas_sales
group by sales_method
order by total_sales desc;

-- Tren Penjualan Bulanan
SELECT TO_CHAR(invoice_date, 'YYYY-MM') as Month, SUM(total_sales) as total_sales
FROM adidas_sales
GROUP BY Month
order by Month desc;

-- Tren Per-Kota
select city, sum(total_sales) as total_sales
from adidas_sales
group by city
order by total_sales desc;

--Retailer Profit Terbesar
select retailer, sum(operating_profit) as total_profit
from adidas_sales
group by retailer
order by total_profit desc;

--Product Terlaris
select product, sum(units_sold) as total_sold
from adidas_sales
group by product
order by total_sold desc;

--Penjual by Year
select extract(year from invoice_date) as year, sum(total_sales)as total_sales
from adidas_sales
group by year
order by total_sales desc;

--Retailer Most Sales
select retailer, sum(units_sold) as total_unit
from adidas_sales
group by retailer
order by total_unit desc;

--product harga tertinggi
select product, max(price_per_unit) as max_price
from adidas_sales
group by product
order by max_price desc;

--Penjualan Per Method
select sales_method, count(*) as cont_method
from adidas_sales
group by sales_method;

--Profitabilitas Wilayah
select region, avg(operating_margin) as average_margin
from adidas_sales
group by region
order by average_margin desc;

--Penjualan Tertinggi by Month
SELECT 
    TO_CHAR(TO_DATE(EXTRACT(MONTH FROM invoice_date)::text, 'MM'), 'Month') as Month, 
    SUM(total_sales) as total_sales
FROM 
    adidas_sales
GROUP BY 
    Month
ORDER BY 
    total_sales DESC;
	
--Produk Penjual Terendah
select product, sum(total_sales) as total_sales
from adidas_sales
group by product
order by total_sales asc;



