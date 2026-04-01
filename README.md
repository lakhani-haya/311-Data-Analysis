# City 311 Analytics Project

## Overview
This project simulates how a city’s Innovation Division could use data to better understand and improve 311 service operations. The focus was on taking messy, real-world style data and turning it into something useful for tracking performance, identifying bottlenecks, and supporting day-to-day decision making.

## Tech Stack
- Power BI for primary dashboards and analysis  
- BigQuery for data storage and querying  
- dbt for data cleaning, transformation, and testing  
- Qlik for supplemental visualization and exploration  
- Python (Pandas) for generating realistic synthetic data  

## Data
The dataset was designed to reflect real operational challenges rather than clean, ideal data. It includes:
- 25K+ service requests across multiple categories  
- Multiple updates per request to track status changes  
- Citizen feedback linked to completed requests  
- Neighbourhood and category reference tables  

The data intentionally includes duplicates, missing values, inconsistent category labels, and a small number of incorrect records to better mirror real-world conditions.

## Data Pipeline
The project follows a structured flow:
- **Raw layer:** ingested synthetic data as-is  
- **Clean layer:** standardized categories, removed duplicates, and fixed inconsistencies  
- **Reporting layer:** built KPI-focused tables for dashboards  

Transformations were handled in dbt, including basic data quality checks.

## Key Analysis & KPIs
Core metrics developed for analysis include:
- Request volume by category and neighbourhood  
- Average, median, and 95th percentile resolution times  
- Backlog volume and average days open  
- Reopen rates by category  
- Requests per capita by neighbourhood  

These metrics help highlight operational inefficiencies and areas needing attention.

## Dashboards
Dashboards were built primarily in Power BI, focusing on:
- High-level overview of service demand  
- Performance breakdowns across categories  
- Operational insights such as backlog and delays  

Qlik was used selectively to explore additional visualizations and support comparative analysis.

## Predictive Component
A simple forecasting model was added to estimate future request volumes. Training and test splits were used to validate performance before generating projections.

## Outcome
This project demonstrates how raw operational data can be transformed into actionable insights. The focus is not just on reporting metrics, but on helping stakeholders understand trends, identify issues, and make more informed decisions.