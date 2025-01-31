--Pasaport
SELECT COUNT(*) AS Pasapoarte_In_Tari_Populare FROM Pasaport 
WHERE tara IN (SELECT DISTINCT tara FROM Destinatii);

SELECT numar_pasaport FROM Pasaport 
WHERE Pasaport_id = (SELECT MIN(Pasaport_id) FROM Pasaport);

SELECT COUNT(*) AS Pasapoarte_Cu_Cifre FROM Pasaport 
WHERE numar_pasaport LIKE ANY (SELECT '%' || Pasaport_id || '%' FROM Pasaport);


--Turist
SELECT nume FROM Turist 
WHERE Pasaport_id IN (SELECT Pasaport_id FROM Pasaport WHERE pasaport_id = '1');

SELECT COUNT(*) AS Turisti_Fara_Vizite FROM Turist 
WHERE Turist_id NOT IN (SELECT DISTINCT Turist_id FROM Vizite);

SELECT nume FROM Turist 
WHERE Pasaport_id = (SELECT MAX(Pasaport_id) FROM Turist);


--Destinatii
SELECT nume FROM Destinatii 
WHERE tara IN (SELECT DISTINCT tara FROM Pasaport WHERE tara LIKE 'A%');

SELECT COUNT(*) AS Destinatii_Fara_Trasee FROM Destinatii 
WHERE Destinatii_id NOT IN (SELECT DISTINCT Destinatii_id FROM Trasee_turistice);

SELECT nume FROM Destinatii 
WHERE Destinatii_id = (SELECT MAX(Destinatii_id) FROM Destinatii);


--Trasee turistice
SELECT nume FROM Trasee_turistice 
WHERE Destinatii_id IN (SELECT Destinatii_id FROM Destinatii WHERE tara = 'Italia');

SELECT COUNT(*) AS Trasee_Fara_Vizite FROM Trasee_turistice 
WHERE trasee_turistice_id NOT IN (SELECT DISTINCT trasee_turistice_id FROM Vizite);

SELECT nume FROM Trasee_turistice 
WHERE trasee_turistice_id = (SELECT MIN(trasee_turistice_id) FROM Trasee_turistice);


--Vizite
SELECT COUNT(*) AS Vizite_Pentru_Turistul_1 FROM Vizite 
WHERE Turist_id = (SELECT MIN(Turist_id) FROM Turist);

SELECT COUNT(*) AS Vizite_La_Destinatii_Populare FROM Vizite 
WHERE trasee_turistice_id IN (SELECT trasee_turistice_id FROM Trasee_turistice WHERE Destinatii_id = 1);

SELECT COUNT(*) AS Vizite_Recente FROM Vizite 
WHERE Sosire >= (SELECT MIN(Sosire) FROM Vizite);


--Resurse naturale
SELECT nume FROM Resurse_naturale 
WHERE Destinatii_id IN (SELECT Destinatii_id FROM Destinatii WHERE nume = 'Romania');

SELECT COUNT(*) AS Resurse_Fara_Descriere FROM Resurse_naturale 
WHERE descriere IS NULL OR descriere = '';

SELECT nume FROM Resurse_naturale 
WHERE resurse_ID = (SELECT MAX(resurse_ID) FROM Resurse_naturale);


--Hotel
SELECT nume FROM Hoteluri 
WHERE Destinatii_id IN (SELECT Destinatii_id FROM Destinatii WHERE tara = 'Franta');

SELECT COUNT(*) AS Hoteluri_Fara_Descriere FROM Hoteluri 
WHERE descriere IS NULL OR descriere = '';

SELECT nume FROM Hoteluri 
WHERE Hotel_id = (SELECT MIN(Hotel_id) FROM Hoteluri);


--Evenimente
SELECT nume FROM Evenimente 
WHERE Destinatii_id IN (SELECT Destinatii_id FROM Destinatii WHERE tara = 'Japonia');

SELECT COUNT(*) AS Evenimente_Recent FROM Evenimente 
WHERE data >= (SELECT MIN(data) FROM Evenimente);

SELECT nume FROM Evenimente 
WHERE Evenimente_id = (SELECT MAX(Evenimente_id) FROM Evenimente);
