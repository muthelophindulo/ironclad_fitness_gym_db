--get the amount that was refunded and the amount that was paid in a month
SELECT 
    sum(case when payment_status = 'refunded' then payment_amount else 0 end) as month_refund,
    sum(case when payment_status = 'paid' then payment_amount else 0 end) as month_paid,
    sum(case when payment_status = 'paid' then payment_amount else 0 end) 
        - sum(case when payment_status = 'refunded' then payment_amount else 0 end) monthly_revenue 
from ironclad_fitness_gym_db.payments
WHERE Month(payment_date) = Month(getdate()) AND
Year(payment_date) = Year(getdate());
