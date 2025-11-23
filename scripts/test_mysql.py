import pymysql
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

try:
    conn = pymysql.connect(
        host=os.getenv("DB_HOST"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_NAME")
    )

    print("MySQL connected successfully!")

except Exception as e:
    print("Connection failed:", e)

finally:
    try:
        conn.close()
    except:
        pass
