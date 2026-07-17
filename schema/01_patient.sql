CREATE TABLE Patient (
    patient_id INTEGER PRIMARY KEY AUTOINCREMENT,

    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,

    date_of_birth DATE NOT NULL,
    gender TEXT NOT NULL,

    blood_group TEXT,

    registration_date DATE NOT NULL DEFAULT CURRENT_DATE,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

