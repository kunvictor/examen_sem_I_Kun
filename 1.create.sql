
CREATE TABLE IF NOT EXISTS Pasaport (
    Pasaport_id INT PRIMARY KEY,
	numar_pasaport VARCHAR(50) UNIQUE NOT NULL,
    tara VARCHAR(50) not null
);

CREATE TABLE IF NOT EXISTS Turist (
    Turist_id INT PRIMARY KEY,
    nume VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefon VARCHAR(10) NOT NULL,
	Pasaport_id INT UNIQUE,
    FOREIGN KEY (Pasaport_id) REFERENCES Pasaport(Pasaport_id)
);

CREATE TABLE IF NOT EXISTS Destinatii (
    Destinatii_id INT PRIMARY KEY,
    nume VARCHAR(100) not null,
    tara VARCHAR(100) not null,
    regiune VARCHAR(100) not null,
    descriere TEXT
);

CREATE TABLE IF NOT EXISTS  Trasee_turistice (
    trasee_turistice_id INT PRIMARY KEY,
    nume VARCHAR(100) NOT NULL,
    dificultate VARCHAR(50) NOT NULL,
    lungine text,
    Destinatii_id INT,
    FOREIGN KEY (Destinatii_id) REFERENCES Destinatii(Destinatii_id)
);


CREATE TABLE IF NOT EXISTS Vizite (
    Vizite_id INT PRIMARY KEY,
    Turist_id INT,
    trasee_turistice_id INT,
    Sosire DATE,
    FOREIGN KEY (Turist_id) REFERENCES Turist(Turist_ID),
    FOREIGN KEY (trasee_turistice_id) REFERENCES trasee_turistice(trasee_turistice_id)
);


CREATE TABLE IF NOT EXISTS Resurse_naturale (
    resurse_ID INT PRIMARY KEY,
    nume VARCHAR(100) not null,
    tip VARCHAR(50) not null,
    descriere TEXT,
    Destinatii_id INT,
    FOREIGN KEY (Destinatii_id) REFERENCES Destinatii(Destinatii_id)
);

CREATE TABLE IF NOT EXISTS Hoteluri (
    Hotel_id INT PRIMARY KEY,
    nume VARCHAR(100) not null,
    Stele VARCHAR(100) not null,
    Destinatii_id INT,
	descriere text,
    FOREIGN KEY (Destinatii_id) REFERENCES Destinatii(Destinatii_id)
);

CREATE TABLE IF NOT EXISTS Evenimente (
    Evenimente_id INT PRIMARY KEY,
    nume VARCHAR(100) not null,
    data DATE,
    descriere TEXT,
    Destinatii_id INT,
    FOREIGN KEY (Destinatii_id) REFERENCES Destinatii(Destinatii_id)
);

