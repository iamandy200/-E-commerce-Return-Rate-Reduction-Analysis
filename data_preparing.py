import pandas as pd

def preprocess():
    orders = pd.read_csv("data/raw/orders.csv")
    returns = pd.read_csv("data/raw/returns.csv")

    df = orders.merge(returns, on="order_id", how="left")
    df["is_returned"] = df["return_id"].notnull().astype(int)

    df.to_csv("data/processed/merged_data.csv", index=False)

if __name__ == "__main__":
    preprocess()

