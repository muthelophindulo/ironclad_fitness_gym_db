CREATE Table ironclad_fitness_gym_db.sessions(
    session_id INT identity(1,1) PRIMARY KEY,
    class_id INT NOT NULL,
    trainer_id INT not null,
    session_date DATE NOT NULL,
    session_time TIME not NULL,
    session_room NVARCHAR(100),
    CONSTRAINT fk_session_class Foreign Key (class_id) REFERENCES ironclad_fitness_gym_db.classes (class_id),
    CONSTRAINT fk_booking_trainer Foreign Key (trainer_id) REFERENCES ironclad_fitness_gym_db.trainer (trainer_id)
);  