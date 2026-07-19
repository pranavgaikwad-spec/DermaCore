CREATE TABLE DiseaseComplication (
    disease_complication_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    complication_id INTEGER NOT NULL,

    occurrence_frequency TEXT,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    FOREIGN KEY (complication_id)
        REFERENCES Complication(complication_id),

    UNIQUE (disease_id, complication_id)
);

