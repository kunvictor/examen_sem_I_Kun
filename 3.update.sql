-- Pasaport
UPDATE Pasaport SET tara = 'Canada' WHERE Pasaport_id = 1;
UPDATE Pasaport SET tara = 'Germania' WHERE Pasaport_id = 2;
UPDATE Pasaport SET numar_pasaport = 'FR999999' WHERE Pasaport_id = 3;
UPDATE Pasaport SET numar_pasaport = 'DE888888' WHERE Pasaport_id = 4;
UPDATE Pasaport SET tara = 'Portugalia' WHERE Pasaport_id = 5;
UPDATE Pasaport SET numar_pasaport = 'US777777' WHERE Pasaport_id = 6;
UPDATE Pasaport SET tara = 'Olanda' WHERE Pasaport_id = 7;
UPDATE Pasaport SET numar_pasaport = 'CA666666' WHERE Pasaport_id = 8;
UPDATE Pasaport SET tara = 'Coreea de Sud' WHERE Pasaport_id = 9;
UPDATE Pasaport SET numar_pasaport = 'AU555555' WHERE Pasaport_id = 10;

-- Turist
UPDATE Turist SET nume = 'Andrei Ionescu' WHERE Turist_id = 1;
UPDATE Turist SET email = 'maria.rossi.new@email.com' WHERE Turist_id = 2;
UPDATE Turist SET telefon = '0744444444' WHERE Turist_id = 3;
UPDATE Turist SET nume = 'Hans Schmidt' WHERE Turist_id = 4;
UPDATE Turist SET email = 'carlos.new@email.com' WHERE Turist_id = 5;
UPDATE Turist SET telefon = '0755555555' WHERE Turist_id = 6;
UPDATE Turist SET nume = 'Emily White' WHERE Turist_id = 7;
UPDATE Turist SET email = 'alex.new@email.com' WHERE Turist_id = 8;
UPDATE Turist SET telefon = '0766666666' WHERE Turist_id = 9;
UPDATE Turist SET nume = 'Steven Black' WHERE Turist_id = 10;

--Destinatii
UPDATE Destinatii SET tara = 'Austria' WHERE Destinatii_id = 1;
UPDATE Destinatii SET regiune = 'Sicilia' WHERE Destinatii_id = 2;
UPDATE Destinatii SET nume = 'Luvru' WHERE Destinatii_id = 3;
UPDATE Destinatii SET descriere = 'Cel mai înalt munte din Austria.' WHERE Destinatii_id = 4;
UPDATE Destinatii SET tara = 'Portugalia' WHERE Destinatii_id = 5;
UPDATE Destinatii SET nume = 'Parcul Yosemite' WHERE Destinatii_id = 6;
UPDATE Destinatii SET regiune = 'Manchester' WHERE Destinatii_id = 7;
UPDATE Destinatii SET tara = 'Brazilia' WHERE Destinatii_id = 8;
UPDATE Destinatii SET nume = 'Kyoto Temple' WHERE Destinatii_id = 9;
UPDATE Destinatii SET descriere = 'Faimoasa clădire cu acoperiș unic.' WHERE Destinatii_id = 10;

-- Trasee turistice
UPDATE Trasee_turistice SET dificultate = 'Dificil' WHERE trasee_turistice_id = 1;
UPDATE Trasee_turistice SET lungine = '10 km' WHERE trasee_turistice_id = 2;
UPDATE Trasee_turistice SET nume = 'Croazieră pe Sena' WHERE trasee_turistice_id = 3;
UPDATE Trasee_turistice SET Destinatii_id = 5 WHERE trasee_turistice_id = 4;
UPDATE Trasee_turistice SET dificultate = 'Ușor' WHERE trasee_turistice_id = 5;
UPDATE Trasee_turistice SET lungine = '30 km' WHERE trasee_turistice_id = 6;
UPDATE Trasee_turistice SET Destinatii_id = 8 WHERE trasee_turistice_id = 7;
UPDATE Trasee_turistice SET nume = 'Tur nocturn Tokyo' WHERE trasee_turistice_id = 9;
UPDATE Trasee_turistice SET dificultate = 'Mediu' WHERE trasee_turistice_id = 10;
UPDATE Trasee_turistice SET lungine = '7 km' WHERE trasee_turistice_id = 8;

-- Vizite
UPDATE Vizite SET Sosire = '2024-07-15' WHERE Vizite_id = 1;
UPDATE Vizite SET Turist_id = 5 WHERE Vizite_id = 2;
UPDATE Vizite SET trasee_turistice_id = 6 WHERE Vizite_id = 3;
UPDATE Vizite SET Sosire = '2024-08-01' WHERE Vizite_id = 4;
UPDATE Vizite SET trasee_turistice_id = 8 WHERE Vizite_id = 5;
UPDATE Vizite SET Turist_id = 7 WHERE Vizite_id = 6;
UPDATE Vizite SET Sosire = '2024-09-10' WHERE Vizite_id = 7;
UPDATE Vizite SET trasee_turistice_id = 9 WHERE Vizite_id = 8;
UPDATE Vizite SET Turist_id = 10 WHERE Vizite_id = 9;
UPDATE Vizite SET trasee_turistice_id = 4 WHERE Vizite_id = 10;

-- Resurse naturale
UPDATE Resurse_naturale SET tip = 'Lac' WHERE resurse_ID = 1;
UPDATE Resurse_naturale SET nume = 'Lacul Baikal' WHERE resurse_ID = 2;
UPDATE Resurse_naturale SET descriere = 'Cea mai adâncă peșteră.' WHERE resurse_ID = 3;
UPDATE Resurse_naturale SET Destinatii_id = 5 WHERE resurse_ID = 4;
UPDATE Resurse_naturale SET tip = 'Munte' WHERE resurse_ID = 6;
UPDATE Resurse_naturale SET Destinatii_id = 8 WHERE resurse_ID = 7;
UPDATE Resurse_naturale SET nume = 'Insula Galápagos' WHERE resurse_ID = 9;
UPDATE Resurse_naturale SET tip = 'Râu' WHERE resurse_ID = 10;
UPDATE Resurse_naturale SET descriere = 'Cel mai lung râu din lume.' WHERE resurse_ID = 8;
UPDATE Resurse_naturale SET Destinatii_id = 4 WHERE resurse_ID = 5;

-- Hotel
UPDATE Hoteluri SET Stele = '5' WHERE Hotel_id = 1;
UPDATE Hoteluri SET descriere = 'Hotel modern de lux.' WHERE Hotel_id = 2;
UPDATE Hoteluri SET nume = 'Paris Lux' WHERE Hotel_id = 3;
UPDATE Hoteluri SET Destinatii_id = 5 WHERE Hotel_id = 4;
UPDATE Hoteluri SET Stele = '3' WHERE Hotel_id = 6;
UPDATE Hoteluri SET descriere = 'Priveliște minunată.' WHERE Hotel_id = 7;
UPDATE Hoteluri SET Destinatii_id = 8 WHERE Hotel_id = 9;
UPDATE Hoteluri SET nume = 'Kyoto Ryokan' WHERE Hotel_id = 10;
UPDATE Hoteluri SET Stele = '4' WHERE Hotel_id = 5;
UPDATE Hoteluri SET Destinatii_id = 3 WHERE Hotel_id = 8;

-- Evenimente
UPDATE Evenimente SET data = '2024-12-25' WHERE Evenimente_id = 1;
UPDATE Evenimente SET nume = 'Festivalul Vinului' WHERE Evenimente_id = 2;
UPDATE Evenimente SET descriere = 'Parade și spectacole de muzică.' WHERE Evenimente_id = 3;
UPDATE Evenimente SET Destinatii_id = 5 WHERE Evenimente_id = 4;
UPDATE Evenimente SET nume = 'Carnavalul Brazilian' WHERE Evenimente_id = 6;
UPDATE Evenimente SET data = '2025-02-20' WHERE Evenimente_id = 7;
UPDATE Evenimente SET Destinatii_id = 8 WHERE Evenimente_id = 9;
UPDATE Evenimente SET descriere = 'Cel mai mare festival cultural din Australia.' WHERE Evenimente_id = 10;
UPDATE Evenimente SET nume = 'Rock Festival' WHERE Evenimente_id = 5;
UPDATE Evenimente SET data = '2024-10-31' WHERE Evenimente_id = 8;
