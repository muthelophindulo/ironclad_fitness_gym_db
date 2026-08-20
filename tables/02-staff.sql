CREATE Table ironclad_fitness_gym_db.staff(
    staff_id INT identity(1,1) PRIMARY KEY,
    staff_name NVARCHAR(32) NOT NULL,
    staff_email VARCHAR(100) NOT NULL UNIQUE,
    staff_phone VARCHAR(20) NOT NULL UNIQUE,
    staff_role VARCHAR(20),
    hire_date DATE DEFAULT getdate()
);

