import pandas as pd

# Load the raw CSV
df = pd.read_csv("../data/WA_Fn-UseC_-Telco-Customer-Churn.csv")

# Clean TotalCharges: Replace empty strings with 0 and convert to float
df['TotalCharges'] = df['TotalCharges'].replace(' ', 0).astype(float)

# Clean SeniorCitizen: Convert 0/1 to 'Yes'/'No' (if needed)
df['SeniorCitizen'] = df['SeniorCitizen'].map({0: 'No', 1: 'Yes'})

# Save cleaned data
df.to_csv("../data/cleaned_telco_churn.csv", index=False)