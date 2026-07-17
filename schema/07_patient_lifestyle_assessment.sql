CREATE TABLE PatientLifestyleAssessment (
    lifestyle_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL,

    smoking_status TEXT,
    alcohol_consumption TEXT,

    diet_type TEXT,

    sleep_hours INTEGER,

    stress_level TEXT,

    physical_activity_level TEXT,

    occupation TEXT,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

