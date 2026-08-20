CREATE Table ironclad_fitness_gym_db.trainer(
    trainer_id INT identity(1,1) PRIMARY KEY,
    trainer_name NVARCHAR(100) NOT NULL,
    trainer_specialty TEXT not NULL,
    trainer_email NVARCHAR(100) not NULL,
    trainer_phone NVARCHAR(100) UNIQUE NOT NULL
);

ALTER Table ironclad_fitness_gym_db.trainer
add staff_id INT NULL;

ALTER TABLE ironclad_fitness_gym_db.trainer
ALTER COLUMN staff_id INT NOT NULL;

ALTER TABLE ironclad_fitness_gym_db.trainer
ADD CONSTRAINT fk_trainer_staff FOREIGN KEY (staff_id) REFERENCES ironclad_fitness_gym_db.staff (staff_id);

ALTER TABLE ironclad_fitness_gym_db.trainer
DROP COLUMN trainer_name, trainer_email, trainer_phone;

