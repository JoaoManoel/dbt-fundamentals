with payments AS (
    SELECT
        id AS payment_id,
        orderid AS order_id,
        amount / 100 as amount,
        status,
        paymentmethod as payment_method,
        created as created_at
    FROM
        {{ source('stripe', 'payment') }}
)
SELECT * FROM payments