--- count the monthly revenue for each plan

SELECT
    pl.plan_name,
    SUM(p.payment_amount) AS monthly_revenue
FROM ironclad_fitness_gym_db.plans pl 
JOIN ironclad_fitness_gym_db.payments p on p.plan_id = pl.plan_id
WHERE MONTH(p.payment_date) = MONTH(GETDATE())
    AND YEAR(p.payment_date) = YEAR(GETDATE())
GROUP BY pl.plan_id,pl.plan_name;