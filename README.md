# 🚕 NYC Taxi Weekly Performance Analysis (2017–2020)

A large-scale data analytics project analyzing 26M+ NYC taxi trips to identify weekly demand patterns, operational trends, and performance KPIs using Python, MySQL, and Power BI.

---

## 📌 Project Objective

The goal of this project is to analyze four years of NYC taxi trip data and build a dynamic week-level performance dashboard that:

- Tracks total trips and revenue efficiency  
- Measures Fare per Trip and Distance per Trip  
- Monitors Week-over-Week (WoW) demand changes  
- Identifies peak demand hours and locations  
- Supports short-term operational decision-making  

---

## 📊 Dataset Overview

- **Time Range:** 2017–2020  
- **Total Records:** ~26 Million  
- **Data Sources:**
  - 4 yearly trip CSV files  
  - Calendar dimension table  
  - Location lookup table  

### Key Fields

- Pickup & Dropoff Timestamp  
- Pickup & Dropoff Location  
- Trip Distance  
- Total Fare Amount  

---

## 🛠 Tech Stack

- **Python (Pandas, Jupyter Notebook)** – Data cleaning & transformation  
- **MySQL** – Data storage, modeling & view creation  
- **Power BI** – Dashboard development & DAX calculations  

---

## 🔄 Data Preparation & Transformation

### Python (Jupyter Notebook)

- Merged multiple yearly datasets  
- Cleaned invalid timestamps and trip durations  
- Filtered standard street-hail trips  
- Corrected fare-distance inconsistencies  
- Standardized column naming  
- Exported cleaned data to MySQL  

### MySQL

- Created structured database (`taxi_trip_db`)  
- Built Calendar and Location dimension tables  
- Created optimized SQL views:
  - `taxi_trips`
  - `dim_pickup_location`
  - `dim_dropoff_location`
- Extracted pickup hour for time-based analysis  

This approach reduced Power BI model complexity and improved performance.

---

## 📊 Dashboard Preview

![Dashboard](https://github.com/priya-marmat/nyc-taxi-weekly-performance-analysis/blob/main/NYC_taxi_trip_dashboard.png?raw=true)

---

## 🔍 Key Insights

- Clear weekly seasonality in taxi demand  
- Evening hours show highest trip volume  
- Certain boroughs consistently dominate pickup activity  
- Fare per trip remains relatively stable across years  
- 2020 shows visible demand shifts compared to previous years  

---

## 💼 Business Value

This dashboard enables:

- Short-term demand monitoring  
- Resource allocation optimization  
- Revenue efficiency tracking  
- Early detection of demand fluctuations  
- Data-driven operational planning  

---

