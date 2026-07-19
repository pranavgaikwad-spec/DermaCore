CREATE TABLE DiseaseSubcategory (
    subcategory_id INTEGER PRIMARY KEY AUTOINCREMENT,

    category_id INTEGER NOT NULL,

    subcategory_name TEXT NOT NULL,

    description TEXT,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id)
        REFERENCES DiseaseCategory(category_id)
);

