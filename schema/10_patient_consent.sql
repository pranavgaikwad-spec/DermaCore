CREATE TABLE PatientConsent (
    consent_id INTEGER PRIMARY KEY AUTOINCREMENT,

    visit_id INTEGER NOT NULL,

    consent_type TEXT NOT NULL,

    consent_status TEXT NOT NULL DEFAULT 'Approved',

    consent_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    expiry_date DATE,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (visit_id)
        REFERENCES PatientVisit(visit_id)
);

