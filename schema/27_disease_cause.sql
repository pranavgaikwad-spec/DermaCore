CREATE TABLE DiseaseCause (
    disease_cause_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    cause_id INTEGER NOT NULL,

    evidence_level TEXT,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    FOREIGN KEY (cause_id)
        REFERENCES Cause(cause_id),

    UNIQUE (disease_id, cause_id)
);

