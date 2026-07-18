CREATE TABLE DoctorSchedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,

    doctor_id INTEGER NOT NULL,

    day_of_week TEXT NOT NULL,

    start_time TIME NOT NULL,
    end_time TIME NOT NULL,

    shift_type TEXT NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (doctor_id)
        REFERENCES Doctor(doctor_id)
);

