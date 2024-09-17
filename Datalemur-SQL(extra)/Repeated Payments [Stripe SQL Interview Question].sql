#problem link-->> https://datalemur.com/questions/repeated-payments

SELECT COUNT(*) AS payment_count
FROM transactions t
JOIN transactions a
ON t.merchant_id = a.merchant_id AND
    t.credit_card_id = a.credit_card_id AND
    t.amount = a.amount AND
    t.transaction_id < a.transaction_id AND
    ABS(EXTRACT(EPOCH FROM t.transaction_timestamp - a.transaction_timestamp)/60) <= 10
