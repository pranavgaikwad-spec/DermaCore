CREATE TABLE DiseaseSymptom (
    disease_symptom_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    symptom_id INTEGER NOT NULL,

    symptom_priority INTEGER DEFAULT 1,

    is_primary_symptom INTEGER NOT NULL DEFAULT 0,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    FOREIGN KEY (symptom_id)
        REFERENCES Symptom(symptom_id),

    UNIQUE (disease_id, symptom_id)
);

