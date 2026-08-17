CREATE OR ALTER TRIGGER ironclad_fitness_gym_db.trg_booking_capacity
ON ironclad_fitness_gym_db.bookings
AFTER INSERT
AS
BEGIN
    -- Grab the session that was just booked into
    DECLARE @session_id INT = (SELECT session_id FROM inserted);
    declare @member_id int = (SELECT member_id FROM inserted);

    -- How many people are booked now, vs. the class's max
    DECLARE @current_count INT = (
        SELECT COUNT(*) FROM ironclad_fitness_gym_db.bookings
        WHERE session_id = @session_id AND booking_status <> 'cancelled'
    );

    DECLARE @max_allowed INT = (
        SELECT c.class_max_members
        FROM ironclad_fitness_gym_db.sessions s
        JOIN ironclad_fitness_gym_db.classes c ON c.class_id = s.class_id
        WHERE s.session_id = @session_id
    );

    -- Reject the booking if it goes over
    IF @current_count > @max_allowed
    BEGIN
        RAISERROR ('Booking failed: this class session is already full. you are being added to the waiting list', 16, 1);
       
        IF NOT EXISTS (SELECT 1 FROM ironclad_fitness_gym_db.waitlist WHERE member_id = @member_id AND session_id = @session_id)
        BEGIN
            INSERT INTO ironclad_fitness_gym_db.waitlist (member_id, session_id)
            VALUES (@member_id, @session_id);
        END

         ROLLBACK TRANSACTION;
    END
END;