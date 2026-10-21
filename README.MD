# Database Internship Project - Documentation

## Rule-to-Constraint Matrix

| Business Rule | Target Table | Target Column | SQL Constraint Type | Description / Logic |
| :--- | :--- | :--- | :--- | :--- |
| Every order must belong to a valid customer | `orders` | `customer_id` | **FOREIGN KEY** | References `customers(customer_id)` to ensure referential integrity. |
| Order status must only be PLACED, PAID, or CANCELLED | `orders` | `order_status` | **CHECK** | `CHECK (order_status IN ('PLACED', 'PAID', 'CANCELLED'))` |
| Order amount cannot be negative | `orders` | `amount_inr` | **CHECK** | `CHECK (amount_inr >= 0)` |
| Primary keys must be unique and non-null | `customers`, `orders` | `customer_id`, `order_id` | **PRIMARY KEY** | Uniquely identifies each record. |