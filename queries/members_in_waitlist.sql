SELECT member_name as name,
       member_phone as phone,
       member_email as email
FROM ironclad_fitness_gym_db.members m
JOIN ironclad_fitness_gym_db.waitlist w on m.member_id = w.member_id
WHERE w.session_id = 2 and w.waitlist_status = 'waiting'
ORDER BY w.waitlist_date ASC;