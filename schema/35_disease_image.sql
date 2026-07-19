CREATE TABLE DiseaseImage (
    image_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    image_title TEXT NOT NULL,

    image_path TEXT NOT NULL,

    image_type TEXT,

    body_region TEXT,

    image_description TEXT,

    image_source TEXT,

    copyright_information TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id)
);

