import pandas as pd
from sqlalchemy import create_engine
import os
from dotenv import load_dotenv

# Load variables from .env file
load_dotenv()

# Use relative path (safe for GitHub)
file_path = "data/Telco-Customer-Churn.csv"

# Read CSV
data = pd.read_csv(file_path)

# Read MySQL credentials from .env
host = os.getenv("DB_HOST")
user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
database = os.getenv("DB_NAME")

# Create engine safely
engine = create_engine(f"mysql+pymysql://{user}:{password}@{host}/{database}")

# Upload data
data.to_sql("telco_churn", con=engine, if_exists="replace", index=False)

print("Data successfully uploaded to MySQL!")
