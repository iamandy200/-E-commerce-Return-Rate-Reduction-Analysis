CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  category VARCHAR(50),
  price DECIMAL(10,2),
  geography VARCHAR(50),
  marketing_channel VARCHAR(50),
  delivery_days INT
);

CREATE TABLE returns (
  order_id INT,
  return_reason VARCHAR(100)
);
