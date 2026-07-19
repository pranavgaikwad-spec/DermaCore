CREATE TABLE RiskFactor (
    risk_factor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    risk_factor_name TEXT NOT NULL UNIQUE,

    description TEXT,

    category TEXT,

    modifiable INTEGER NOT NULL DEFAULT 1,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

