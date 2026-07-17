CREATE TABLE PatientInsurance (
    insurance_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL,

    insurance_provider TEXT NOT NULL,

    policy_number TEXT NOT NULL,

    coverage_type TEXT,

    valid_from DATE,

    valid_until DATE,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

