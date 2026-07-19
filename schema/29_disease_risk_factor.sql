CREATE TABLE DiseaseRiskFactor (
    disease_risk_factor_id INTEGER PRIMARY KEY AUTOINCREMENT,

    disease_id INTEGER NOT NULL,

    risk_factor_id INTEGER NOT NULL,

    risk_level TEXT,

    notes TEXT,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (disease_id)
        REFERENCES Disease(disease_id),

    FOREIGN KEY (risk_factor_id)
        REFERENCES RiskFactor(risk_factor_id),

    UNIQUE (disease_id, risk_factor_id)
);

