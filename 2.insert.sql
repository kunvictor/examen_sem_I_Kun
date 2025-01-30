-- Pasaport
INSERT INTO Pasaport (Pasaport_id, numar_pasaport, tara) VALUES 
(1, 'RO123456', 'Romania'),
(2, 'IT789012', 'Italia'),
(3, 'FR345678', 'Franta'),
(4, 'DE567890', 'Germania'),
(5, 'ES987654', 'Spania'),
(6, 'US456123', 'SUA'),
(7, 'UK741258', 'Marea Britanie'),
(8, 'CA369852', 'Canada'),
(9, 'JP951357', 'Japonia'),
(10, 'AU159753', 'Australia');

-- Turist
INSERT INTO Turist (Turist_id, nume, email, telefon, Pasaport_id) VALUES 
(1, 'Ion Popescu', 'ion.popescu@email.com', '0712345678', 1),
(2, 'Maria Rossi', 'maria.rossi@email.com', '0723456789', 2),
(3, 'Jean Dupont', 'jean.dupont@email.com', '0734567890', 3),
(4, 'Hans Müller', 'hans.muller@email.com', '0745678901', 4),
(5, 'Carlos Sánchez', 'carlos.sanchez@email.com', '0756789012', 5),
(6, 'John Smith', 'john.smith@email.com', '0767890123', 6),
(7, 'Emily Brown', 'emily.brown@email.com', '0778901234', 7),
(8, 'Alex Johnson', 'alex.johnson@email.com', '0789012345', 8),
(9, 'Taro Yamada', 'taro.yamada@email.com', '0790123456', 9),
(10, 'Steve Williams', 'steve.williams@email.com', '0701234567', 10);

-- Destanatii
INSERT INTO Destinatii (Destinatii_id, nume, tara, regiune, descriere) VALUES 
(1, 'Castelul Bran', 'Romania', 'Transilvania', 'Un castel faimos asociat cu Dracula.'),
(2, 'Colosseum', 'Italia', 'Roma', 'Un amfiteatru roman antic.'),
(3, 'Turnul Eiffel', 'Franta', 'Paris', 'Simbolul Franței.'),
(4, 'Muntele Zugspitze', 'Germania', 'Bavaria', 'Cel mai înalt munte din Germania.'),
(5, 'Sagrada Familia', 'Spania', 'Barcelona', 'O catedrală impresionantă.'),
(6, 'Grand Canyon', 'SUA', 'Arizona', 'Unul dintre cele mai spectaculoase canioane.'),
(7, 'Big Ben', 'Marea Britanie', 'Londra', 'Cel mai faimos ceas din lume.'),
(8, 'Cascada Niagara', 'Canada', 'Ontario', 'Cea mai cunoscută cascadă.'),
(9, 'Muntele Fuji', 'Japonia', 'Honshu', 'Cel mai înalt munte din Japonia.'),
(10, 'Opera din Sydney', 'Australia', 'Sydney', 'Un simbol cultural al Australiei.');


-- Trasee_turistice
INSERT INTO Trasee_turistice (trasee_turistice_id, nume, dificultate, lungine, Destinatii_id) VALUES 
(1, 'Traseu montan Bucegi', 'Mediu', '15 km', 1),
(2, 'Tur ghidat Colosseum', 'Ușor', '3 km', 2),
(3, 'Plimbare pe Sena', 'Ușor', '5 km', 3),
(4, 'Drumeție pe Zugspitze', 'Dificil', '12 km', 4),
(5, 'Tur Gaudí', 'Ușor', '6 km', 5),
(6, 'Expediție în Grand Canyon', 'Dificil', '25 km', 6),
(7, 'Tur Londra', 'Ușor', '4 km', 7),
(8, 'Traseu Cascada Niagara', 'Mediu', '8 km', 8),
(9, 'Ascensiune Muntele Fuji', 'Dificil', '10 km', 9),
(10, 'Plimbare portuară Sydney', 'Ușor', '5 km', 10);


--Vizite
INSERT INTO Vizite (Vizite_id, Turist_id, trasee_turistice_id, Sosire) VALUES 
(1, 1, 1, '2024-06-15'),
(2, 2, 2, '2024-07-10'),
(3, 3, 3, '2024-08-05'),
(4, 4, 4, '2024-09-12'),
(5, 5, 5, '2024-10-08'),
(6, 6, 6, '2024-11-20'),
(7, 7, 7, '2025-01-05'),
(8, 8, 8, '2025-02-14'),
(9, 9, 9, '2025-03-21'),
(10, 10, 10, '2025-04-10');


-- Resurse_naturale
INSERT INTO Resurse_naturale (resurse_ID, nume, tip, descriere, Destinatii_id) VALUES 
(1, 'Peștera Ialomiței', 'Peșteră', 'Peșteră spectaculoasă.', 1),
(2, 'Lacul Como', 'Lac', 'Unul dintre cele mai frumoase lacuri.', 2),
(3, 'Parcul Versailles', 'Parc', 'Grădinile palatului Versailles.', 3),
(4, 'Pădurea Neagră', 'Pădure', 'O pădure legendară.', 4),
(5, 'Plaja Barceloneta', 'Plajă', 'Cea mai faimoasă plajă din Barcelona.', 5),
(6, 'Râul Colorado', 'Râu', 'Râul ce a format Grand Canyon.', 6),
(7, 'Râul Tamisa', 'Râu', 'Cel mai lung râu din Anglia.', 7),
(8, 'Marea Ontario', 'Mare', 'Parte din Marile Lacuri.', 8),
(9, 'Vulcanul Aso', 'Vulcan', 'Unul dintre cei mai mari vulcani activi.', 9),
(10, 'Marea Coralilor', 'Mare', 'Cea mai mare barieră de corali.', 10);


--Hotel
INSERT INTO Hoteluri (Hotel_id, nume, Stele, Destinatii_id, descriere) VALUES 
(1, 'Hotel Dracula', '4', 1, 'Tematic Dracula.'),
(2, 'Hotel Roma', '5', 2, 'Lux în centrul Romei.'),
(3, 'Paris Plaza', '4', 3, 'Vedere la Turnul Eiffel.'),
(4, 'Bavaria Resort', '4', 4, 'În inima Alpilor.'),
(5, 'Barcelona Beach', '3', 5, 'Lângă plaja Barceloneta.'),
(6, 'Grand Canyon Lodge', '4', 6, 'Cabană cu vedere superbă.'),
(7, 'London Royal', '5', 7, 'Eleganță clasică.'),
(8, 'Niagara Suites', '4', 8, 'Vedere la cascadă.'),
(9, 'Fuji Inn', '3', 9, 'Priveliște spre Fuji.'),
(10, 'Sydney Harbour Hotel', '5', 10, 'Lângă Opera din Sydney.');



--Evenimente
INSERT INTO Evenimente (Evenimente_id, nume, data, descriere, Destinatii_id) VALUES 
(11, 'Maratonul Transilvania', '2024-09-15', 'Cursă de alergare prin peisajele spectaculoase ale Transilvaniei.', 1),
(12, 'Roma Fashion Week', '2024-10-05', 'Eveniment de modă renumit în capitala Italiei.', 2),
(13, 'Turneul de Tenis Roland Garros', '2024-05-26', 'Unul dintre cele mai prestigioase turnee de tenis din lume.', 3),
(14, 'Festivalul Berii München', '2024-09-20', 'Oktoberfest la München, plin de bere și tradiție germană.', 4),
(15, 'Carnavalul de la Veneția', '2025-02-10', 'Festival celebru cu măști și costume spectaculoase.', 2),
(16, 'Coachella Music Festival', '2024-04-12', 'Festival de muzică renumit în SUA.', 6),
(17, 'Royal Ascot', '2024-06-18', 'Cursă hipică de prestigiu în Anglia.', 7),
(18, 'Festivalul Internațional de Film Toronto', '2024-09-05', 'Unul dintre cele mai mari festivaluri de film din lume.', 8),
(19, 'Sumo Basho', '2024-07-10', 'Competiție tradițională de sumo în Japonia.', 9),
(20, 'Festivalul Vivid Sydney', '2024-06-01', 'Un festival de lumină, muzică și idei în Sydney.', 10);


