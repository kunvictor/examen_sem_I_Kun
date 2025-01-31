-- Pasaport
SELECT COUNT(*) AS Pasapoarte_Europene FROM Pasaport WHERE tara IN ('Romania', 'Franta', 'Germania', 'Italia', 'Spania') AND numar_pasaport LIKE 'IT%';
SELECT COUNT(*) AS Pasapoarte_Extracomunitare FROM Pasaport WHERE tara NOT IN ('Romania', 'Franta', 'Germania', 'Italia', 'Spania') OR tara = 'SUA';
SELECT COUNT(*) AS Pasapoarte_Cu_NR FROM Pasaport WHERE numar_pasaport LIKE '%123%';
SELECT COUNT(*) AS Pasapoarte_Interval FROM Pasaport WHERE Pasaport_id BETWEEN 3 AND 7;


--Turist
SELECT COUNT(*) AS Turisti_Gmail FROM Turist WHERE email LIKE '%email.com' AND telefon LIKE '07%';
SELECT COUNT(*) AS Turisti_Din_Top5 FROM Turist WHERE Turist_id BETWEEN 1 AND 5;
SELECT COUNT(*) AS Turisti_Fara_Pasaport FROM Turist WHERE Pasaport_id IS NULL OR Pasaport_id = 0;
SELECT COUNT(*) AS Turisti_Cu_Nume_A FROM Turist WHERE nume LIKE 'A%';


--Desnatii
SELECT COUNT(*) AS Destinatii_Din_Europa FROM Destinatii WHERE tara IN ('Romania', 'Franta', 'Italia', 'Germania', 'Spania') AND regiune LIKE '%Sicilia%';
SELECT COUNT(*) AS Destinatii_Populare FROM Destinatii WHERE descriere LIKE '%faimos%' OR descriere LIKE '%popular%';
SELECT COUNT(*) AS Destinatii_Intre_2_5 FROM Destinatii WHERE Destinatii_id BETWEEN 2 AND 5;
SELECT COUNT(*) AS Destinatii_Cu_Cuvant_Castel FROM Destinatii WHERE nume LIKE '%Castel%';


--Trasee turistice
SELECT COUNT(*) AS Trasee_Dificile FROM Trasee_turistice WHERE dificultate = 'Dificil' AND lungine LIKE '%km';
SELECT COUNT(*) AS Trasee_Usoare FROM Trasee_turistice WHERE dificultate = 'Usor' OR lungine LIKE '5%';
SELECT COUNT(*) AS Trasee_Intre_0_10km FROM Trasee_turistice WHERE lungine BETWEEN '0 km' AND '10 km';
SELECT COUNT(*) AS Trasee_Cu_Tur FROM Trasee_turistice WHERE nume LIKE '%Tur%';


--Vizite
SELECT COUNT(*) AS Vizite_Vara FROM Vizite WHERE Sosire BETWEEN '2024-06-01' AND '2024-08-31';
SELECT COUNT(*) AS Vizite_Cu_Turisti_1_3 FROM Vizite WHERE Turist_id BETWEEN 1 AND 3;
SELECT COUNT(*) AS Vizite_Octombrie FROM Vizite WHERE Sosire BETWEEN '2024-10-01' AND '2024-10-31';
SELECT COUNT(*) AS Vizite_2025 FROM Vizite WHERE Sosire BETWEEN '2025-01-01' AND '2025-12-31';


--Resurse naturale 
SELECT COUNT(*) AS Resurse_Lacuri FROM Resurse_naturale WHERE tip = 'Lac' AND nume LIKE '%Lac%';
SELECT COUNT(*) AS Resurse_Faimoase FROM Resurse_naturale WHERE descriere LIKE '%spectaculoasă%' OR descriere LIKE '%legendară%' OR descriere LIKE '%lume%';
SELECT COUNT(*) AS Resurse_Intre_1_5 FROM Resurse_naturale WHERE resurse_ID BETWEEN 1 AND 5;
SELECT COUNT(*) AS Resurse_Cu_Padure FROM Resurse_naturale WHERE nume LIKE '%Pădure%';

--Hotel
SELECT COUNT(*) AS Hoteluri_5_Stele FROM Hoteluri WHERE Stele = '5' AND nume LIKE '%Hotel%';
SELECT COUNT(*) AS Hoteluri_Populare FROM Hoteluri WHERE descriere LIKE '%vedere%' OR descriere LIKE '%central%';
SELECT COUNT(*) AS Hoteluri_Intre_2_6 FROM Hoteluri WHERE Hotel_id BETWEEN 2 AND 6;
SELECT COUNT(*) AS Hoteluri_Cu_Resort FROM Hoteluri WHERE nume LIKE '%Resort%';


--Evenimente
SELECT COUNT(*) AS Evenimente_Din_2024 FROM Evenimente WHERE data BETWEEN '2024-01-01' AND '2024-12-31';
SELECT COUNT(*) AS Evenimente_Culturale FROM Evenimente WHERE descriere LIKE '%festival%' OR descriere LIKE '%spectacol%';
SELECT COUNT(*) AS Evenimente_Intre_11_15 FROM Evenimente WHERE Evenimente_id BETWEEN 11 AND 15;
SELECT COUNT(*) AS Evenimente_Cu_Festival FROM Evenimente WHERE nume LIKE '%Festival%';
