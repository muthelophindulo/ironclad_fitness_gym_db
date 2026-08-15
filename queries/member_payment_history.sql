-- show every member their payment amount, payment date, and plan they have taken

SELECT 
    m.member_name,
    m.member_email,
    pl.plan_name,
    p.payment_amount,
    p.payment_date
FROM ironclad_fitness_gym_db.members m
LEFT OUTER JOIN ironclad_fitness_gym_db.payments p ON m.member_id = p.member_id
LEFT OUTER JOIN ironclad_fitness_gym_db.plans pl ON p.plan_id = pl.plan_id;