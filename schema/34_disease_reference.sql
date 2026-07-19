CREATE TABLE DiseaseReference (
    reference_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    reference_title TEXT NOT NULL,

    source_name TEXT NOT NULL,

    authors TEXT,

    publication_year INTEGER,

    doi TEXT,

    url TEXT,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id)
);

