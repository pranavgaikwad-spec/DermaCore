CREATE TABLE Disease (
    disease_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_name TEXT NOT NULL UNIQUE,

    category_id INTEGER,

    subcategory_id INTEGER,

    scientific_name TEXT,

    icd10_code TEXT UNIQUE,

    description TEXT,

    contagious INTEGER NOT NULL DEFAULT 0,

    chronic INTEGER NOT NULL DEFAULT 0,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

