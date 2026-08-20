--- count how many sessions a trainer has ever had
SELECT st.staff_name, COUNT(s.session_id) as trainer_session_count FROM ironclad_fitness_gym_db.staff st
JOIN ironclad_fitness_gym_db.trainer t on st.staff_id = t.staff_id
JOIN ironclad_fitness_gym_db.sessions s ON s.trainer_id = t.trainer_id
GROUP BY st.staff_name;