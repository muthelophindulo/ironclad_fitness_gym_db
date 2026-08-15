CREATE Table ironclad_fitness_gym_db.classes(
    class_id INT identity(1,1) PRIMARY KEY,
    class_name NVARCHAR(100) NOT NULL,
    class_duration SMALLINT DEFAULT 0,
    class_max_members SMALLINT DEFAULT 1
);