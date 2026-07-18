CREATE TABLE DoctorAvailability (
    availability_id INTEGER PRIMARY KEY AUTOINCREMENT,

    doctor_id INTEGER NOT NULL,

    available_date DATE NOT NULL,

    start_time TIME NOT NULL,
    end_time TIME NOT NULL,

    availability_status TEXT NOT NULL DEFAULT 'Available',

    remarks TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (doctor_id)
        REFERENCES Doctor(doctor_id)
);

