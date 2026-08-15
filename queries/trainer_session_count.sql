--- count how many sessions a trainer has ever had

SELECT 
    t.trainer_name,
    COUNT(s.session_id) AS trainer_session_count
FROM ironclad_fitness_gym_db.trainer t
left join ironclad_fitness_gym_db.sessions s on s.trainer_id = t.trainer_id
group by t.trainer_id,t.trainer_name;