CREATE TABLE MPI_national ([ISO] TEXT PRIMARY KEY NOT NULL CHECK(LENGTH([ISO]) = 3),
[Country] TEXT NOT NULL, 
[MPI Urban] REAL NOT NULL CHECK (0 <= [MPI Urban] AND [MPI Urban] <= 1), 
[Headcount Ratio Urban] REAL NOT NULL CHECK(0 <= [Headcount Ratio Urban] AND [Headcount Ratio Urban]<= 100),
[Intensity of Deprivation Urban] REAL NOT NULL CHECK(0 <= [Intensity of Deprivation Urban] AND [Intensity of Deprivation Urban] <= 100),
[MPI Rural] REAL  NOT NULL CHECK (0 <= [MPI Rural] AND [MPI Rural] <= 1), 
[Headcount Ratio Rural] REAL NOT NULL CHECK(0 <= [Headcount Ratio Rural] AND [Headcount Ratio Rural] <= 100),
[Intensity of Deprivation Rural] REAL NOT NULL CHECK(0 <= [Intensity of Deprivation Rural] AND [Intensity of Deprivation Rural] <= 100));


CREATE TABLE MPI_subnational ([ISO country code] TEXT NOT NULL CHECK(LENGTH([ISO country code]) = 3),
 [Country] TEXT NOT NULL,
 [Sub-national region] TEXT NOT NULL,
 [World region] TEXT NOT NULL CHECK([World region] IN ("Sub-Saharan Africa", "Latin America and Caribbean", "East Asia and the Pacific", "Arab States", "South Asia", "Europe and Central Asia")),
 [MPI National] REAL NOT NULL CHECK (0 <= [MPI National] AND [MPI National]<= 1),
 [MPI Regional] REAL NOT NULL CHECK (0 <= [MPI Regional] AND [MPI Regional]<= 1),
 [Headcount Ratio Regional] REAL NOT NULL CHECK(0 <= [Headcount Ratio Regional] AND [Headcount Ratio Regional] <= 100),
 [Intensity of deprivation Regional] REAL NOT NULL CHECK(0 <= [Intensity of deprivation Regional] AND [Intensity of deprivation Regional]<= 100),
 PRIMARY KEY([ISO country code], [Sub-national region]),
 FOREIGN KEY([ISO country code]) REFERENCES MPI_national([ISO]));

 PRAGMA FOREIGN_KEYS = ON;