INSERT INTO lokallag (lag_navn, mote_postnr, mote_adresse)
Values
('Os TF', '5210', 'Idrettsvegen 41'),
('Oslo', '0100', 'Karl Johans Gate 5');

INSERT INTO medlem (medlemsnr, fornavn, etternavn, telefon, epost, postnr, sted, gateadresse, aktiv_medlem, lokallag_id)
VALUES
(100, 'Hans', 'Simmermann', '12345671', 'Hans@test.no', '5010', 'Bergen vest', 'Gate 1', TRUE, 1),
(101, 'Bo', 'Karlsen','12345672', 'Bo@test.no', '5020', 'Bergen øst', 'Gate 2', TRUE,2),
(2001, 'Adrian', 'Simmermann', '12345673', 'Adrian@test.no', '5010', 'Bergen vest', 'Gate 3', TRUE, 1);