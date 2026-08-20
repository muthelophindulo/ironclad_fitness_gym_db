INSERT into ironclad_fitness_gym_db.trainer(trainer_name,trainer_specialty,trainer_email,trainer_phone)
VALUES
('muthelo phindulo','cardio','muthelophindulo223@gmail.com','0630754893'),
('john wick','self defence','johnwick@gmail.com','0637854893');

INSERT into ironclad_fitness_gym_db.trainer(trainer_name,trainer_specialty,trainer_email,trainer_phone)
VALUES
('muthelo f','unknown','unknwon223@gmail.com','0720754893');

UPDATE t
SET t.staff_id = s.staff_id
FROM ironclad_fitness_gym_db.trainer t
JOIN ironclad_fitness_gym_db.staff s ON s.staff_email = t.trainer_email;