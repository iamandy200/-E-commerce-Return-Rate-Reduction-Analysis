import pandas as pd
from sklearn.linear_model import LogisticRegression

df = pd.read_csv("data/processed/merged_data.csv")

X = pd.get_dummies(df[["price","delivery_days","category","geography"]])
y = df["is_returned"]

model = LogisticRegression(max_iter=1000)
model.fit(X, y)
