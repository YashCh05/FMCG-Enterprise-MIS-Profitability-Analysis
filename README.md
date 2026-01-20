# 📊 FMCG Enterprise MIS & Profitability Analysis

## 📌 Project Overview

In a highly competitive **FMCG (Fast-Moving Consumer Goods)** environment, organizations often face a critical challenge:  
**sales continue to grow, but profit margins remain under pressure**.

This project simulates a **real-world enterprise MIS (Management Information System)** used by leadership teams to monitor sales performance, profitability, discount behavior, and operational risks across products, regions, customers, and sales teams.

The objective is to move from **manual, fragmented reporting** to a **centralized, automated, decision-ready MIS system** using **Python, SQL, Power BI, and Excel**.

---

## 🏢 Business Background

The organization operates as a **mid-sized FMCG company in India**, selling products from well-known brands such as **HUL, Reckitt, Amul, Parle, PepsiCo, and Britannia**.

Key characteristics of the business:
- Multiple product categories (Home Care, Personal Care, Snacks, Dairy, etc.)
- Operations across **North, South, East, West, and Central India**
- Sales through **Retailers, Distributors, and Modern Trade**
- Region-wise sales teams with monthly targets
- Heavy use of **discounting to drive volume**

Despite stable sales growth, leadership lacks visibility into **where profitability is being created or lost**.

---

## ❗ Business Problems to Solve

Leadership raised the following **core business questions**, which this project addresses:

### 1️⃣ Profitability Visibility
- Which **products and brands** are driving healthy profit?
- Which products generate revenue but destroy margins?

### 2️⃣ Discount Leakage
- Which regions rely excessively on discounts?
- At what discount levels does profit start eroding?

### 3️⃣ Regional Performance
- Which regions perform well on revenue but underperform on margin?
- Where should pricing and discount strategies be corrected?

### 4️⃣ Customer & Channel Risk
- Which customer segments are profitable vs risky?
- Is revenue growth coming from **healthy customers or margin erosion**?

### 5️⃣ Sales Performance Evaluation
- Are sales targets being achieved sustainably?
- Which salespersons rely on discount-heavy selling?

---

## 🎯 Project Objective

To design and deliver an **Enterprise MIS Automation System** that:
- Identifies **profit leakage**
- Highlights **discount risks**
- Evaluates **product, region, customer, and salesperson performance**
- Provides **CXO-ready dashboards** for fast decision-making

---

## 📂 Dataset Description

The dataset represents **realistic enterprise FMCG data** and includes:

### Fact Table
- Sales transactions
- Quantity sold
- Gross Sales
- Discount %
- Net Sales
- Cost
- Profit

### Dimension Tables
- Date
- Product
- Category
- Brand
- Region & State
- Customer Segment & Channel
- Salesperson
- Monthly Targets

📌 The analysis period was **derived directly from transactional data** rather than assumed.

---

## 🧱 Data Modeling (Snowflake Schema)

A **Snowflake schema** was designed to ensure:
- Scalability
- Clean relationships
- Reusable dimensions
- Enterprise reporting standards

# <img width="1038" height="719" alt="Screenshot 2026-01-20 061226" src="https://github.com/user-attachments/assets/bccbd60e-6136-4396-bcfb-9423735e7dda" />
---

## 🔄 Project Pipeline

### 1️⃣ Excel – Initial Data Validation

- Column sanity checks  
- Schema understanding  
- Quick data quality review  

# <img width="1209" height="720" alt="Screenshot 2026-01-20 212731" src="https://github.com/user-attachments/assets/58dcdff6-1ca3-4390-935d-ceeb5493e6a6" />

---

### 2️⃣ Python – Data Cleaning & EDA

**Tools Used:** Pandas, NumPy, Matplotlib / Seaborn  

**Key Activities:**
- Handling missing discount values  
- Creating profit margin metrics  
- Business-driven exploratory data analysis  
- Identifying revenue vs profit drivers  

**Focus Areas:**
- Product & brand performance  
- Regional margin comparison  
- Customer segment profitability  
- Discount impact on profit  

# <img width="826" height="719" alt="Screenshot 2026-01-20 212925" src="https://github.com/user-attachments/assets/b566e861-b6b9-49e5-ab5f-2a64678a23dd" />

---

### 3️⃣ SQL – Business Logic Validation

**Tools Used:** SQL (Joins, Aggregations, Window Functions)

**Purpose:**
- Reproduce Python insights using SQL  
- Validate business logic and calculations  
- Simulate real enterprise data environments  

# <img width="552" height="473" alt="Screenshot 2026-01-20 213147" src="https://github.com/user-attachments/assets/a9da4fcb-4d17-4fae-8b73-938c19c2fd96" />

---

### 4️⃣ Power BI – MIS Dashboards

- Snowflake schema data modeling  
- Executive KPI cards  
- Drill-down analysis  
- Leadership-focused storytelling  

---

## 📊 Dashboards Overview

### 🟡 Executive Overview Dashboard
- Net Sales  
- Total Profit  
- Sales Target  
- Overall KPIs  
- Sales vs Target Trend  

# <img width="945" height="551" alt="Screenshot 2026-01-20 200830" src="https://github.com/user-attachments/assets/13fbb18a-e573-471d-9403-6677f27eea51" />
---

### 🟡 Sales & Profit Dashboard
- Product & brand performance  
- Profitability matrix  
- Customer segment analysis  
- Monthly profit trend  
- Top & bottom products  

# <img width="945" height="550" alt="Screenshot 2026-01-20 200859" src="https://github.com/user-attachments/assets/eea14b4f-4ace-4e63-87ae-b125b769a68c" />
---

### 🟡 Discount & Risk Dashboard
- Discount trap analysis  
- Regional margin comparison  
- Discount behavior by salesperson  
- Profit distribution & risk outliers
- 
#<img width="948" height="548" alt="Screenshot 2026-01-20 200923" src="https://github.com/user-attachments/assets/87203249-5c68-48ad-b29b-3d1cbec671fc" />

---

## 🔍 Key Business Insights

### Product & Brand Performance
- **Top Products:** Dove Shampoo 180ml, Harpic Toilet Cleaner, Lizol Floor Cleaner  
- **Underperforming Products:** Lux Soap Bar, Pears Soap, Lays Classic Salted  
- **Top Brands:** HUL, Reckitt  
- **Underperforming Brands:** PepsiCo, Britannia  

### Regional Performance
- **East region** has the lowest profit margin (~24.82%)  
- Margin erosion driven by excessive discounting  

### Customer Segments
- **Urban customers** are the most profitable  
- Semi-Urban & Rural segments show higher risk  

### Salesperson Performance
- **Pooja Singh** leads in revenue and profit  
- Slightly misses target but outperforms peers sustainably  

---

## 💡 Business Recommendations

- Rationalize discounts in the **East region**  
- Focus growth on **Home Care & Personal Care** categories  
- Re-evaluate pricing strategy for snack brands  
- Introduce **profit-based sales incentives**  
- Prioritize high-margin **Urban customers**

---

## 🛠 Tools & Technologies Used

- Excel  
- Python (Pandas, NumPy, Matplotlib / Seaborn)  
- SQL  
- Power BI  

---

## 📌 Final Outcome

This project demonstrates how an **Enterprise MIS Automation System** enables leadership to:

- Identify margin leakage early  
- Shift focus from revenue to profitability  
- Make data-driven pricing and sales decisions  
- Support sustainable business growth  
