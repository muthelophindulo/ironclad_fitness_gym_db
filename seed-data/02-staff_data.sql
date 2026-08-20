INSERT INTO ironclad_fitness_gym_db.staff(staff_name,staff_email,staff_phone,staff_role)
SELECT trainer_name,trainer_email,trainer_phone, 'trainer'
FROM ironclad_fitness_gym_db.trainer;

INSERT INTO ironclad_fitness_gym_db.staff(staff_name,staff_email,staff_phone,staff_role)
VALUES
('thandi','thandi@gmail.com','0660451400','receptionist'),
('sam','sam@gmail.com','0784411280','manager');