CREATE TABLE DiseaseSeverity (
    severity_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    severity_level TEXT NOT NULL,

    description TEXT,

    treatment_priority TEXT,

    hospitalization_required INTEGER NOT NULL DEFAULT 0,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    UNIQUE (disease_id, severity_level)
);

