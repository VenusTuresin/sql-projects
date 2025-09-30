# 🏍️ Motorcycle Parts Sales Analysis
This project analyzes **wholesale sales data** for a motorcycle parts company operating across **three warehouses**. The goal is to help the board of directors gain insights into **net revenue trends by product line, month, and warehouse**, using SQL for data extraction and Python for visualization.  

---

## 📊 Project Overview  
- **Objective:** Calculate **net revenue** for wholesale orders, grouped by **product line**, **month**, and **warehouse**.  
- **Dataset:** Includes details such as product lines, warehouses, payment methods, fees, and order types.  
- **Focus:** Only **wholesale** orders are analyzed to isolate B2B revenue streams. 

---

## 📂 Project Structure 
- `motorcycle_sales_analysis.sql` → SQL script containing queries to analyze net revenue 
- `motorcycle_sales.ipynb` → Jupyter Notebook version of the analysis
- `sales_output.xlsx` → Example output file with aggregated results

---

## 🛠 Tech Stack
- **Database:** SQL (compatible with MySQL / PostgreSQL)  
- **Data Processing:** SQL queries, SQLAlchemy, Pandas  
- **Visualization:** Matplotlib (static charts)  
- **Output:** Excel reports for easy sharing and visualization  
- **Environment:** Jupyter Notebook (analysis + documentation)  
  
---

## 🚀 Features
- **Data Cleaning & Transformation**  
  - Filters only *Wholesale* orders.  
  - Computes *Net Revenue* after deducting payment fees.  
  - Converts dates into monthly periods for aggregation.  

- **Automated Reports**  
  - Net Revenue by Product Line & Month  
  - Net Revenue by Product Line, Month & Warehouse  
  - Total Monthly Net Revenue  
  - Share of Revenue by Product Line (Quarterly)  

- **Excel Export**  
  - All results saved into `sales_output.xlsx` with multiple sheets.  

---

# 📈 Data Visualizations
## 1️⃣ Grouped bar chart: Product line revenue by month  
<img width="597" height="495" alt="Ekran Resmi 2025-09-30 21 53 47" src="https://github.com/user-attachments/assets/d1393b68-1788-42e6-b75d-3c475232dc68" />
- In **August**, *Frame & Body* and *Suspension & Traction* generated the highest revenues.  
- *Engine* products showed a significant drop in **July**.  
- *Miscellaneous* products consistently underperformed across all months.
  
## 2️⃣ Stacked bar chart: Revenue split by warehouse 
<img width="826" height="400" alt="Ekran Resmi 2025-09-30 22 12 01" src="https://github.com/user-attachments/assets/d9098b21-c0a2-492e-94ae-2f0319136fd8" />
- The **Central warehouse** was the dominant revenue source across nearly all product lines.  
- The **North warehouse** contributed in some categories but generally ranked second.  
- The **West warehouse** had limited impact overall, but showed noticeable contributions in *Braking System (July)* and *Suspension & Traction (August)*.  

## 3️⃣ Line chart: Total monthly revenue trend  
<img width="717" height="465" alt="Ekran Resmi 2025-09-30 22 11 51" src="https://github.com/user-attachments/assets/6a3ccab1-7fb5-44c0-aa27-8c60680ff381" />
- Revenues in **June** and **July** remained relatively stable.  
- In **August**, total revenue **increased by over 20%**, reaching its peak — possibly due to seasonal demand or promotional campaigns.  

## 4️⃣ Pie chart: Revenue share by product line  
<img width="700" height="563" alt="Ekran Resmi 2025-09-30 22 11 39" src="https://github.com/user-attachments/assets/b82507e2-e6e9-487e-9f77-625fb25e9ba1" />
- The largest shares came from *Frame & Body (24.7%)* and *Suspension & Traction (24.0%)*.  
- *Electrical System (13.6%)* and *Engine (13.3%)* contributed moderately and in a balanced way.  
- *Miscellaneous (9.9%)* had the lowest share and may be of less strategic importance.

---

## General Results
- The company’s strongest product lines are **Frame & Body** and **Suspension & Traction**.  
- The **Central warehouse** generates the highest revenue and should be prioritized in stocking and logistics investments.  
- Strong sales in **August** indicate seasonal demand growth — preparation for this period is essential.  

---
## ▶️ How to Run
```bash
# Clone this repository:
git clone https://github.com/YourUsername/sql-projects.git
cd sql-projects/motorcycle-sales
# Run the SQL script on your DBMS (PostgreSQL, SQLite, MySQL):
.read motorcycle_sales_analysis.sql
# Open the Jupyter notebook to generate visualizations:
jupyter notebook motorcycle_sales.ipynb






