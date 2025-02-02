import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV data
df = pd.read_csv('mock_kaggle.csv')

# Convert 'data' column to datetime format
df['data'] = pd.to_datetime(df['data'])

# Calculate revenue for each row (units sold multiplied by price)
df['revenue'] = df['venda'] * df['preco']

# Group data by month e.g. average stock level during the month
monthly_data = df.groupby(pd.Grouper(key='data', freq='M')).agg({
    'venda': 'sum',
    'revenue': 'sum',
    'estoque': 'mean'
}).reset_index()

# Calculate Month-over-Month Growth in Revenue
monthly_data['prev_revenue'] = monthly_data['revenue'].shift(1)
monthly_data['mom_growth'] = ((monthly_data['revenue'] - monthly_data['prev_revenue']) /
                              monthly_data['prev_revenue']) * 100

print(monthly_data)

# Plot Monthly Revenue Trend
plt.figure(figsize=(10, 6))
plt.plot(monthly_data['data'], monthly_data['revenue'], marker='o', linestyle='-')
plt.title('Monthly Revenue Trend')
plt.xlabel('Month')
plt.ylabel('Total Revenue')
plt.grid(True)
plt.show()

# Plot Month-over-Month Revenue Growth
plt.figure(figsize=(10, 6))
plt.bar(monthly_data['data'].dt.strftime('%Y-%m'), monthly_data['mom_growth'], color='skyblue')
plt.title('Month-over-Month Revenue Growth (%)')
plt.xlabel('Month')
plt.ylabel('MoM Growth (%)')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()