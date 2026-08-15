-- Shows which class sessions are fully booked 

SELECT 
    s.session_id,
    c.class_name,
    s.session_date,
    s.session_time,
    s.session_room,
    c.class_max_members,
    COUNT(b.booking_id) AS current_bookings
FROM ironclad_fitness_gym_db.sessions s
JOIN ironclad_fitness_gym_db.classes c ON c.class_id = s.class_id
JOIN ironclad_fitness_gym_db.bookings b ON b.session_id = s.session_id
    AND b.booking_status <> 'cancelled'
GROUP BY 
    s.session_id, c.class_name, s.session_date, 
    s.session_time, s.session_room, c.class_max_members
HAVING COUNT(b.booking_id) >= c.class_max_members;
