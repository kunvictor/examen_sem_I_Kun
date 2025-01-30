-- Pasaport
SELECT COUNT(*) AS Total_Pasapoarte FROM Pasaport;
SELECT COUNT(DISTINCT tara) AS Tari_Unice FROM Pasaport;

--Turist
SELECT COUNT(*) AS Total_Turisti FROM Turist;
SELECT COUNT(DISTINCT email) AS Emailuri_Unice FROM Turist;

--Destinatii
SELECT COUNT(*) AS Total_Destinatii FROM Destinatii;
SELECT COUNT(DISTINCT tara) AS Tari_Unice FROM Destinatii;

-- Trasee turistice
SELECT COUNT(*) AS Total_Trasee FROM Trasee_turistice;
SELECT COUNT(DISTINCT dificultate) AS Dificultati_Diferite FROM Trasee_turistice;

--Vizite
SELECT COUNT(*) AS Total_Vizite FROM Vizite;
SELECT MIN(Sosire) AS Prima_Vizita FROM Vizite;

--Resurse naturale
SELECT COUNT(*) AS Total_Resurse FROM Resurse_naturale;
SELECT COUNT(DISTINCT tip) AS Tipuri_Resurse FROM Resurse_naturale;

--Hotel
SELECT COUNT(*) AS Total_Hoteluri FROM Hoteluri;
SELECT COUNT(DISTINCT Stele) AS Numar_Categorii_Hoteluri FROM Hoteluri;

--Evenimente
SELECT COUNT(*) AS Total_Evenimente FROM Evenimente;
SELECT MAX(data) AS Cel_Mai_Tarziu_Eveniment FROM Evenimente;

