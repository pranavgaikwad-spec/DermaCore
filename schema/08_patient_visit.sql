CREATE TABLE PatientVisit (
    visit_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL,

    doctor_id INTEGER NOT NULL,

    clinic_id INTEGER NOT NULL,

    visit_date DATETIME NOT NULL,

    visit_type TEXT NOT NULL,

    chief_complaint TEXT NOT NULL,

    visit_status TEXT NOT NULL DEFAULT 'Completed',

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

