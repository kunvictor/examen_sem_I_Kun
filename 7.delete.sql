--Pasaport
DELETE FROM Pasaport WHERE tara = 'Romania';
DELETE FROM Pasaport WHERE numar_pasaport is null;



--Turist
DELETE FROM Turist WHERE telefon LIKE '%10';
DELETE FROM Turist WHERE Pasaport_id IS NULL;
DELETE FROM Turist WHERE nume = 'Andrei';


--Destinatii
DELETE FROM Destinatii WHERE regiune = 'Madrid';
DELETE FROM Destinatii WHERE descriere LIKE 'Dracula';
DELETE FROM Destinatii WHERE destinatii_id IS NULL;


--Trasee_turistice
DELETE FROM Trasee_turistice WHERE dificultate = 'Usor';
DELETE FROM Trasee_turistice WHERE Destinatii_id NOT IN (SELECT Destinatii_id FROM Destinatii);
DELETE FROM Trasee_turistice WHERE nume LIKE 'Traseu';



--Vizite
DELETE FROM Vizite WHERE Sosire < '2024-01-01';
DELETE FROM Vizite WHERE trasee_turistice_id = 1 OR trasee_turistice_id = 2;
DELETE FROM Vizite WHERE Turist_id IN (SELECT Turist_id FROM Turist WHERE email LIKE '%test.com');


--Resurse_naturale
DELETE FROM v WHERE tip = 'Râu';
DELETE FROM Resurse_naturale WHERE nume LIKE '%Munte%';
DELETE FROM Resurse_naturale WHERE Destinatii_id IS NULL;


--Hoteluri
DELETE FROM Hoteluri WHERE Stele = '3';
DELETE FROM Hoteluri WHERE nume LIKE '%Resort%';
DELETE FROM Hoteluri WHERE Destinatii_id NOT IN (SELECT Destinatii_id FROM Destinatii);
