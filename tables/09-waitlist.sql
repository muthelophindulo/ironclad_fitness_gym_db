CREATE Table ironclad_fitness_gym_db.waitlist(
    waitlist_id INT identity(1,1) PRIMARY KEY,
    member_id INT NOT NULL,
    session_id int NOT NULL,
    waitlist_status VARCHAR(20) NOT NULL DEFAULT 'waiting'
    CHECK (waitlist_status IN ('waiting', 'cancelled')),
    waitlist_date DATE DEFAULT getDate(),

    CONSTRAINT fk_waitlist_member Foreign Key (member_id) REFERENCES ironclad_fitness_gym_db.members (member_id),
    CONSTRAINT fk_waitlist_session Foreign Key ([session_id]) REFERENCES ironclad_fitness_gym_db.sessions (session_id),
    CONSTRAINT uq_waitlist_member_session UNIQUE (member_id,session_id)

);