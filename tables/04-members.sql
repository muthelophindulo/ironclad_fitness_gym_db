CREATE Table ironclad_fitness_gym_db.members (
    member_id INT identity(1,1) PRIMARY key,
    member_name NVARCHAR(100) NOT NULL,
    member_email NVARCHAR(100) UNIQUE NOT NULL,
    member_phone NVARCHAR(100) UNIQUE NOT NULL,
    plan_id INT NOT NULL,
    member_join_date DATE DEFAULT getDate(),
    CONSTRAINT fk_member_plan Foreign Key (plan_id) REFERENCES ironclad_fitness_gym_db.plans (plan_id)
);