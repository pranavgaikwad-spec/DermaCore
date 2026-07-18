CREATE TABLE Equipment (
    equipment_id INTEGER PRIMARY KEY AUTOINCREMENT,

    clinic_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,

    equipment_name TEXT NOT NULL,

    manufacturer TEXT,

    serial_number TEXT UNIQUE,

    purchase_date DATE,

    warranty_expiry DATE,

    status TEXT NOT NULL DEFAULT 'Operational',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (clinic_id)
        REFERENCES Clinic(clinic_id),

    FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

