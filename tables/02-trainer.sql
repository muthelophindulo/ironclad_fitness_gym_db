CREATE Table ironclad_fitness_gym_db.trainer(
    trainer_id INT identity(1,1) PRIMARY KEY,
    trainer_name NVARCHAR(100) NOT NULL,
    trainer_specialty TEXT not NULL,
    trainer_email NVARCHAR(100) not NULL,
    trainer_phone NVARCHAR(100) UNIQUE NOT NULL
);