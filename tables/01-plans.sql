CREATE Table ironclad_fitness_gym_db.plans (
    plan_id INT identity(1,1) PRIMARY key,
    plan_name NVARCHAR(100) NOT NULL,
    plan_description NVARCHAR(100) NOT NULL,
    plan_monthly_price DECIMAL(10,2) DEFAULT 0.00 
);