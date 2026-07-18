CREATE TABLE Clinic (
    clinic_id INTEGER PRIMARY KEY AUTOINCREMENT,

    clinic_name TEXT NOT NULL,

    clinic_type TEXT NOT NULL,

    phone_number TEXT,
    email TEXT,

    address_line_1 TEXT NOT NULL,
    address_line_2 TEXT,

    city TEXT NOT NULL,
    district TEXT NOT NULL,
    state TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    country TEXT NOT NULL,

    opening_time TIME,
    closing_time TIME,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

