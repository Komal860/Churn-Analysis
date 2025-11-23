Telecom Customer Churn Analysis

This project analyzes customer churn for a telecom company using:

Python (Pandas, SQLAlchemy, PyMySQL)

MySQL

Jupyter Notebook

Power BI Dashboard

SQL queries

The goal is to identify the key factors influencing churn and provide insights to reduce customer loss.

📁 Project Structure
Churn-Analysis/
│── data/
│   └── Telco-Customer-Churn.csv
│── notebooks/
│   └── pandasTask.ipynb
│── scripts/
│   ├── load_data.py
│   └── test_mysql.py
│── sql/
│   └── churn_analysis.sql
│── dashboard/
│   └── churn_dashboard.pbix
│── README.md
│── requirements.txt
│── .gitignore

📘 Dataset: Telco Customer Churn

The dataset contains telecom customer details including:

Demographics

Services subscribed

Tenure

Billing details

Internet services

Technical support usage

Churn (Yes/No)

📌 Rows: ~7,000
📌 Type: CSV file

📒 Notebook (pandasTask.ipynb)

This Jupyter Notebook includes:

✔ Data loading
✔ Data cleaning

Handling missing values

Converting data types

Fixing inconsistent entries

✔ Exploratory Data Analysis

Churn distribution

Service usage patterns

Contract types

Tenure trends

✔ Summaries & insights
🛠 Python Scripts
1️⃣ load_data.py

Uploads the dataset into a MySQL database.

Features:

Reads CSV

Connects to MySQL using SQLAlchemy

Uploads data to table telco_churn

Uses environment variables for safety (.env)

2️⃣ test_mysql.py

Simple script to test MySQL connection using PyMySQL.

🗄 SQL Analysis (churn_analysis.sql)

Contains SQL queries for:

✔ Overall churn rate
✔ Churn rate by state
✔ Churn rate by Internet service
✔ Churn rate by contract type
✔ High-tenure churned customers
✔ Support-related churn

These queries help identify patterns and segments with high churn likelihood.

📊 Power BI Dashboard

The dashboard includes:

Overall churn KPIs

Churn by demographics

Contract-wise churn

Service usage effects on churn

Tenure vs churn visuals

Churn prediction summary

📁 File included:
dashboard/churn_dashboard.pbix

🧰 Tech Stack
Languages

Python

SQL

Libraries

Pandas

NumPy

SQLAlchemy

PyMySQL

Jupyter Notebook

Tools

MySQL

Power BI

Git & GitHub

📦 Installation
1️⃣ Clone the repository
git clone https://github.com/<your-username>/Churn-Analysis.git
cd Churn-Analysis

2️⃣ Install dependencies
pip install -r requirements.txt

3️⃣ Create .env file for MySQL credentials
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=telecom_churn

4️⃣ Run MySQL upload script
python scripts/load_data.py

5️⃣ Open the notebook (optional)
jupyter notebook notebooks/pandasTask.ipynb

🚀 Run SQL Queries

Open MySQL Workbench or terminal:

USE telecom_churn;
SELECT * FROM telco_churn LIMIT 10;


Use queries from sql/churn_analysis.sql.

📈 Key Insights (Sample)

Customers with month-to-month contracts churn the most.

Fiber optic internet users show higher churn rates.

Customers with high monthly charges are more likely to churn.

Long-tenure customers churn significantly less.

Tech support availability reduces churn.

📜 License

This project is open-source under the MIT License.