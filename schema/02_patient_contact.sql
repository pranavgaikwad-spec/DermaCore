CREATE TABLE PatientContact (
    patient_contact_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL UNIQUE,

    mobile_number TEXT NOT NULL,
    alternate_mobile_number TEXT,
    email TEXT,

    emergency_contact_name TEXT NOT NULL,
    emergency_contact_number TEXT NOT NULL,
    emergency_contact_relationship TEXT NOT NULL,

    preferred_contact_method TEXT NOT NULL DEFAULT 'Phone',

    is_verified INTEGER NOT NULL DEFAULT 0,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

