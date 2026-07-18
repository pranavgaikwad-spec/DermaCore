CREATE TABLE Appointment (
    appointment_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    clinic_id INTEGER NOT NULL,

    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,

    appointment_status TEXT NOT NULL DEFAULT 'Scheduled',

    appointment_reason TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES Doctor(doctor_id),

    FOREIGN KEY (clinic_id)
        REFERENCES Clinic(clinic_id)
);

