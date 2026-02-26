INSERT INTO poststed (postnr, sted)
VALUES ('5210','Os'),
       ('5217','Nore Neset');

INSERT INTO lokallag (lagnavn, mote_postnr, mote_adresse)
Values
('Os_TF', '5210', 'Idrettsvegen 41'),
('Nore_Neset_IL', '5217', 'Skeismyra 4');

INSERT INTO medlem (medlemsnr, fornavn, etternavn, telefonnr, epost, postnr, adresse, medlemskap, lagnavn)
VALUES
(100, 'Hans', 'Simmermann', '12345671', 'Hans@test.no', '5210',  'Gate 1', TRUE, 'Os_TF'),
(101, 'Bo', 'Karlsen','12345672', 'Bo@test.no', '5217', 'Gate 2', TRUE, 'Nore_Neset_IL'),
(103, 'Adrian', 'Simmermann', '12345673', 'Adrian@test.no', '5210', 'Gate 3', TRUE, 'Os_TF');

UPDATE lokallag SET leder_medlemsnr = 100 where lagnavn = 'Os_TF';
UPDATE lokallag SET leder_medlemsnr = 101 where lagnavn = 'Nore_Neset_IL';

INSERT INTO medlemsavgift (medlemsnr, aar, betalt, betalt_dato)
VALUES
(100, 2021, TRUE, '2021-01-10'),
(100, 2024, FALSE, NULL),
(100, 2026, TRUE, '2026-01-01'),

(101, 2004, TRUE, '2004-01-01'),
(101, 2005, FALSE, NULL),
(101, 2026, TRUE, '2026-01-05'),

(103, 2026, TRUE, '2026-01-01');