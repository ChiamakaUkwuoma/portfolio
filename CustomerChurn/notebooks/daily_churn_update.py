import os
from dotenv import load_dotenv
import pandas as pd
import mysql.connector
from datetime import datetime

# Connect to MySQL
load_dotenv()
conn = mysql.connector.connect(
  host=os.getenv('DB_HOST'),
  user=os.getenv('DB_USER'),
  password=os.getenv('DB_PASSWORD'),
  database=os.getenv('DB_NAME')
)

# Query data
df = pd.read_sql("SELECT * FROM customers", conn)

# Calculate daily metrics
total_customers = df.shape[0]
churned = df[df['Churn'] == 'Yes'].shape[0]
churn_rate = (churned / total_customers) * 100
avg_tenure = df['tenure'].mean()

# Update summary table
cursor = conn.cursor()
cursor.execute("""
  INSERT INTO daily_churn_summary 
  (date, total_customers, churned_customers, churn_rate, avg_tenure)
  VALUES (%s, %s, %s, %s, %s)
""", (datetime.today().strftime('%Y-%m-%d'), total_customers, churned, churn_rate, avg_tenure))

conn.commit()
conn.close()