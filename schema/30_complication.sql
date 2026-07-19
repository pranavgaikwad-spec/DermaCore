CREATE TABLE Complication (
    complication_id INTEGER PRIMARY KEY AUTOINCREMENT,

    complication_name TEXT NOT NULL UNIQUE,

    description TEXT,

    severity_level TEXT,

    emergency_required INTEGER NOT NULL DEFAULT 0,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

