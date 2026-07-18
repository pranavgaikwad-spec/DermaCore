CREATE TABLE Doctor (
    doctor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,

    gender TEXT NOT NULL,

    date_of_birth DATE,

    phone_number TEXT NOT NULL UNIQUE,
    email TEXT UNIQUE,

    medical_license_number TEXT NOT NULL UNIQUE,

    years_of_experience INTEGER DEFAULT 0,

    consultation_fee DECIMAL(10,2) NOT NULL,

    joining_date DATE NOT NULL,

    status TEXT NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

