# 🏦 Bank Customer Churn Analysis

An end-to-end data analysis project on 10,000 bank customers to understand **who is leaving, why, and which valuable customers the bank should work to retain**.

![Python](https://img.shields.io/badge/Python-3.x-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626)

---

## 📌 Business Problem

Customer churn directly hurts revenue. Acquiring a new customer costs far more than keeping an existing one. This project answers:

1. What is the overall churn rate?
2. Which countries, age groups and customer segments churn the most?
3. How much account balance is being lost to churn?
4. Which high-value customers are still active but at risk of leaving?

---

## 🛠️ Tools & Technologies

| Area | Tools |
|------|-------|
| Data cleaning & EDA | Python (Pandas, NumPy, Matplotlib, Seaborn) |
| Business analysis | MySQL (CTEs, window functions, aggregations) |
| Visualization | Power BI |
| Environment | Jupyter Notebook, Git & GitHub |

---

## 📂 Dataset

- **Rows:** 10,000 customers
- **Columns:** customer_id, credit_score, country, gender, age, tenure, balance, products_number, credit_card, active_member, estimated_salary, churn
- **Target variable:** `churn` (1 = left the bank, 0 = stayed)
- **Countries:** France, Spain, Germany

---

## 🔄 Project Workflow

### 1. Data Cleaning (Python)
- Checked and removed duplicate records
- Verified there were no null values
- Standardised column names (lowercase, underscores)
- Engineered an `age_group` feature (young adult, adult, middle age, senior) using quartile binning
- Checked skewness of numeric features

### 2. Exploratory Data Analysis (Python)
- Churn distribution
- Churn rate by country and by age group
- Balance and number of products vs churn
- Correlation heatmap

### 3. SQL Analysis (MySQL)
- Churn by **country × age group**
- Churn by **number of products × active status**
- **Balance lost to churn** by country
- High-value customer segmentation: **balance quartile × credit score band**
- **Retention target list:** active, high-balance customers (age 45+, 1 or 3+ products) who have not churned yet

### 4. Dashboard (Power BI)
- Interactive dashboard summarising churn drivers and key KPIs

---

## 📊 Key Insights

- **Germany has the highest churn** (~32%) and loses the most balance, about **33% of its total balance**, compared to ~19–20% in France and Spain.
- **Senior customers churn the most.** In Germany, senior churn reaches **~62%**.
- **Engagement matters.** Inactive customers with 1 product churn at ~37%, versus ~19% for active customers with 1 product.
- **Two products is the sweet spot.** Customers with 2 products have the lowest churn (~6–10%), while customers with 3 or more products churn at very high rates (75%+), which suggests a possible product or service issue worth investigating.

---

## 💡 Recommendations

1. Launch a targeted retention campaign for **German and senior customers**.
2. Re-engage **inactive members** with offers and personalised outreach.
3. Review why customers with **3+ products** leave at such high rates.
4. Prioritise the **high-balance at-risk customer list** for relationship-manager calls.

---

## 🖼️ Dashboard Preview

> _Add a screenshot of your Power BI dashboard here_
>
> `![Dashboard](images/dashboard.png)`

---

## 📁 Repository Structure

```
Bank-Customer-Churn-Analysis/
│
├── data/
│   └── bank_customer_churn.csv
├── notebooks/
│   └── bank customer churn.ipynb
├── sql/
│   └── churn_analysis.sql
├── powerbi/
│   └── Bank_Churn_Analysis.pbix
├── images/
│   └── dashboard.png
└── README.md
```

---

## ▶️ How to Run

1. Clone the repository
   ```bash
   git clone https://github.com/mohammedrizwan77/Bank-Customer-Churn-Analysis.git
   ```
2. Install the requirements
   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```
3. Open the notebook
   ```bash
   jupyter notebook
   ```
4. Run the SQL queries in MySQL Workbench after importing the cleaned data into a table named `bank_churn_analysis`.
5. Open the `.pbix` file in Power BI Desktop.

---

## 👤 Author

**Mohammed Rizwan**
Aspiring Data Analyst | Python · SQL · Power BI · Excel

🔗 [GitHub](https://github.com/mohammedrizwan77)

---

⭐ If you found this project useful, consider giving it a star!# Bank-Customer-Churn-Analysing
Data Analytics Project Showcasing Bank customer churn analysis on 10,000 customers using Python, MySQL and Power BI. Finds who churns, by country, age and product usage, and which high-value customers to retain.
