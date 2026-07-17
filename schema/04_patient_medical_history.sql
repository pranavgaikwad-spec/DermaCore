CREATE TABLE PatientMedicalHistory (
    history_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL,

    disease_id INTEGER NOT NULL,

    diagnosis_date DATE,
    current_status TEXT NOT NULL,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

