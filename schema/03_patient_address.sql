CREATE TABLE PatientAddress (
    patient_address_id INTEGER PRIMARY KEY AUTOINCREMENT,

    patient_id INTEGER NOT NULL UNIQUE,

    address_line_1 TEXT NOT NULL,
    address_line_2 TEXT,

    city TEXT NOT NULL,
    district TEXT NOT NULL,
    state TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    country TEXT NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(patient_id)
);

