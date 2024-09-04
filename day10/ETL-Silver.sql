-- Databricks notebook source
-- MAGIC %run /Workspace/Users/mridul_1724384753904@npupgradassessment.onmicrosoft.com/day8/includes

-- COMMAND ----------

create table if not exists silver.products_silver as (select ProductID as product_id, ProductName as product_name ,Category as category, ListPrice as list_price from upgrad_ws.bronze.products_bronze)

-- COMMAND ----------

create table if not exists gold.category_count as select category, count(*) as count from upgrad_ws.silver.products_silver group by category order by count desc

-- COMMAND ----------

select * from gold.category_count
