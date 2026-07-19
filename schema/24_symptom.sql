CREATE TABLE Symptom (
    symptom_id INTEGER PRIMARY KEY AUTOINCREMENT,

    symptom_name TEXT NOT NULL UNIQUE,

    medical_term TEXT,

    description TEXT,

    body_region TEXT,

    severity_level TEXT,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

