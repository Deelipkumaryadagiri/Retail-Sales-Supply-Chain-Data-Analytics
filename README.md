# 📦 Retail Sales & Supply Chain Analytics — SQL + Python Project

## 📌 Project Overview
This project focuses on analyzing a **Retail Supply Chain Sales Dataset** using **SQL and Python**(pandas, sqlalchemy, kaggle API, zipfile). The goal is to derive meaningful insights such as revenue trends, product performance, customer behavior, regional sales patterns, and YoY growth.

The dataset includes retail order transactions from **2014 to 2017**, covering:
- Orders
- Products
- Categories & Sub-categories
- Customer segments
- Regions
- Profit, Discounts, Shipping & Delivery details
- Date dimensions

This project is ideal for **Data Analyst / Business Analyst portfolios** and demonstrates skills in:
- SQL (Joins, Window Functions, CTEs, Aggregations, Ranking)
- Exploratory Data Analysis (EDA)
- Time-series analysis
- Data cleaning and validation

---
<img width="1081" height="433" alt="project architecture" src="https://github.com/user-attachments/assets/830e64a8-99d8-4769-a9b8-21f406bd7e4b" />

---

## 📊 Dataset Details

### 🔹 Retails Order Full Dataset (9,994 rows)
Contains:
- Order ID  
- Product ID  
- Category & Sub-Category  
- Sale Price, Cost Price, Profit, Profit Margin  
- Discounts  
- Quantity  
- Region, Country  
- Order Date, Ship Date, Delivery Date  
- Customer Segment  
- Shipping Mode  

### 🔹 Calendar Table (1,826 rows)
Covers:
- Date  
- Year, Month, Week, Day  
- Quarter  
- Holiday flag  
- Weekend flag  

---

## 🧹 Data Cleaning (Python)

Main cleaning steps performed:

- Converted Order Date, Shipping Date, Delivery Date → `datetime`
- Handled missing values in discount and profit margin
- Verified profit = sale_price – cost_price
- Added additional time features:
  - Year
  - Month
  - Week number
  - Year-Month format
- Removed inconsistent records

---

## 🧪 SQL Analysis Performed

The project includes SQL scripts answering advanced analytical questions such as:

### ✔ Revenue Analysis
- Top 10 revenue-generating products
- Revenue and sales by region
- Top 5 categories in each region
- Monthly sales trend by category
- Profit margin analysis

### ✔ Time Series Insights
- Month-over-month (MoM) growth
- Year-over-year (YoY) comparison (e.g., 2022 vs 2023)
- Best month for each category
- Sub-category growth comparison

### ✔ Customer & Product Insights
- Repeat customer revenue
- Slow-moving products
- Highest profit margin products
- Highest selling sub-categories

---

