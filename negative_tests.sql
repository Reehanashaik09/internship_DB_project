-- Test 1: Try an invalid order status (Should fail CHECK constraint)
INSERT INTO orders (order_id, customer_id, ordered_on, order_status, amount_inr) 
VALUES (107, 1, '2026-04-10', 'PENDING', 500.00);

-- Test 2: Try a negative money amount (Should fail CHECK constraint)
INSERT INTO orders (order_id, customer_id, ordered_on, order_status, amount_inr) 
VALUES (108, 1, '2026-04-10', 'PAID', -150.00);

-- Test 3: Try to place an order for a customer ID that doesn't exist (Should fail FOREIGN KEY constraint)
INSERT INTO orders (order_id, customer_id, ordered_on, order_status, amount_inr) 
VALUES (109, 999, '2026-04-10', 'PAID', 250.00);