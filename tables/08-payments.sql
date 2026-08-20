CREATE Table ironclad_fitness_gym_db.payments(
    payment_id INT identity(1,1) PRIMARY KEY,
    payment_amount DECIMAL(10,2) NOT NULL,
    plan_id INT NOT NULL,
    member_id INT NOT NULL,
    payment_date DATE DEFAULT getdate(),
    CONSTRAINT fk_payment_plan Foreign Key (plan_id) REFERENCES ironclad_fitness_gym_db.plans (plan_id),
    CONSTRAINT fk_payment_member Foreign Key (member_id) REFERENCES ironclad_fitness_gym_db.members (member_id)
);

ALTER Table ironclad_fitness_gym_db.payments
ADD payment_status varchar(20) not NULL DEFAULT 'paid';

ALTER Table ironclad_fitness_gym_db.payments
DROP COLUMN payment_status;