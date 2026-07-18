CREATE TABLE DoctorSpecialization (
    doctor_specialization_id INTEGER PRIMARY KEY AUTOINCREMENT,

    doctor_id INTEGER NOT NULL,

    specialization_name TEXT NOT NULL,

    experience_years INTEGER DEFAULT 0,

    certification_status TEXT NOT NULL DEFAULT 'Certified',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (doctor_id)
        REFERENCES Doctor(doctor_id)
);


