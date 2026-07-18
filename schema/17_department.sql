CREATE TABLE Department (
    department_id INTEGER PRIMARY KEY AUTOINCREMENT,

    clinic_id INTEGER NOT NULL,

    department_name TEXT NOT NULL,

    description TEXT,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (clinic_id)
        REFERENCES Clinic(clinic_id)
);

