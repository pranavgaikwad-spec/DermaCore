CREATE TABLE Room (
    room_id INTEGER PRIMARY KEY AUTOINCREMENT,

    clinic_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,

    room_number TEXT NOT NULL,
    room_type TEXT NOT NULL,

    floor_number INTEGER,

    status TEXT NOT NULL DEFAULT 'Available',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (clinic_id)
        REFERENCES Clinic(clinic_id),

    FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

