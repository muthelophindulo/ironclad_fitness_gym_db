CREATE Trigger ironclad_fitness_gym_db.booking_cancelation
    ON ironclad_fitness_gym_db.bookings
    AFTER UPDATE
    AS
    BEGIN
        DECLARE @id int = (SELECT booking_id from inserted);

        DECLARE @new_status varchar(20) = (SELECT booking_status from inserted);
        DECLARE @old_status varchar(20) = (SELECT booking_status from deleted);
        
        if @new_status = 'cancelled' and @Old_status <>  'cancelled'
            BEGIN
                UPDATE ironclad_fitness_gym_db.bookings 
                    SET cancelled_at = getdate()
                    WHERE ironclad_fitness_gym_db.bookings.booking_id = @id;
            END

    END