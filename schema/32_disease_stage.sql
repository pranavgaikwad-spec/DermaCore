CREATE TABLE DiseaseStage (
    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    stage_name TEXT NOT NULL,

    stage_order INTEGER NOT NULL,

    description TEXT,

    expected_duration TEXT,

    prognosis TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    UNIQUE (disease_id, stage_order)
);

