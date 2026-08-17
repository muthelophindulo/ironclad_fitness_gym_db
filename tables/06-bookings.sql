create Table ironclad_fitness_gym_db.bookings(
    booking_id int identity(1,1) PRIMARY KEY,
    session_id INT not NULL,
    member_id int NOT NULL,
    booking_status NVARCHAR(20) NOT NULL DEFAULT 'booked',
    CONSTRAINT fk_booking_session Foreign Key (session_id) REFERENCES ironclad_fitness_gym_db.sessions (session_id),
    CONSTRAINT fk_booking_member Foreign Key (member_id) REFERENCES ironclad_fitness_gym_db.members (member_id)
);

ALTER Table ironclad_fitness_gym_db.bookings ADD
    cancelled_at DATE NULL;

CREATE UNIQUE INDEX uq_bookings_active_member_session
ON ironclad_fitness_gym_db.bookings (member_id, session_id)
WHERE booking_status <> 'cancelled';