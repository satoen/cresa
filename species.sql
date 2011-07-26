CREATE DATABASE delta;
use delta;

CREATE TABLE Polygon (
    id INT NOT NULL auto_increment PRIMARY KEY,
    codi INT NOT NULL,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE Avian (
    id INT NOT NULL auto_increment PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    mu INT NOT NULL,
    phi INT NOT NULL
);

CREATE TABLE Season (
    id INT NOT NULL auto_increment PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    init DATE NOT NULL,
    final DATE NOT NULL
);

CREATE TABLE AvianPolygonSeasonNum (
    id BIGINT NOT NULL auto_increment PRIMARY KEY,
    num INT NOT NULL DEFAULT 0,
    idAvian INT NOT NULL,
    idPolygon INT NOT NULL,
    idSeason INT NOT NULL,
    FOREIGN KEY(idAvian) REFERENCES Avian(id),
    FOREIGN KEY(idPolygon) REFERENCES Polygon(id),
    FOREIGN KEY(idSeason) REFERENCES Season(id)
);

CREATE TABLE Afinity (
    id INT NOT NULL auto_increment PRIMARY KEY,
    idAvian1 INT NOT NULL,
    idAvian2 INT NOT NULL,
    idSeason INT NOT NULL,
    FOREIGN KEY(idAvian1) REFERENCES Avian(id),
    FOREIGN KEY(idAvian2) REFERENCES Avian(id),
    FOREIGN KEY(idSeason) REFERENCES Season(id)
);

CREATE TABLE Dispersion (
    id INT NOT NULL auto_increment PRIMARY KEY,
    probability FLOAT NOT NULL DEFAULT 0,
    idAvian INT NOT NULL,
    idSeason INT NOT NULL,
    idDistance INT NOT NULL,
    FOREIGN KEY(idDistance) REFERENCES Distance(id),
    FOREIGN KEY(idAvian) REFERENCES Avian(id),
    FOREIGN KEY(idSeason) REFERENCES Season(id)
);

CREATE TABLE Distance (
    id INT NOT NULL auto_increment PRIMARY KEY,
    near INT NOT NULL,
    far INT NOT NULL
);

CREATE TABLE Coordenate (
    id BIGINT NOT NULL auto_increment PRIMARY KEY,
    x MEDIUMINT NOT NULL,
    y MEDIUMINT NOT NULL,
    idPolygon INT NOT NULL,
    FOREIGN KEY(idPolygon) REFERENCES Polygon(id)
);

