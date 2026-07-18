CREATE TABLE DoctorQualification (
    qualification_id INTEGER PRIMARY KEY AUTOINCREMENT,

    doctor_id INTEGER NOT NULL,

    degree_name TEXT NOT NULL,
    specialization TEXT,
    university_name TEXT NOT NULL,

    graduation_year INTEGER,

    registration_number TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (doctor_id)
        REFERENCES Doctor(doctor_id)
);

