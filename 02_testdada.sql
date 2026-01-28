INSERT INTO bil (regnr, landskode, eier_navn, eier_adresse, epost, telefonnummer) VALUES
    ('AA10000', 'NO','Testnavn 10', 'Bergen 10', '10@example.com', '11111111'),
    ('BB20000', 'NO','Testnavn 20', 'Bergen 20', '20@example.com', '22222222'),
    ('CC30000', 'NO','Testnavn 30', 'Bergen 30', '30@example.com', '33333333');

INSERT INTO passering (regnr, landskode,tidspunkt, bompengebod, belop) VALUES
    ('AA10000', 'NO',now() - interval '7 days', 'Bergen vest', 45.00),
    ('AA10000', 'NO',now() - interval '3 days', 'Bergen vest', 45.00),
    ('AA10000', 'NO',now() - interval '1 day', 'Bergen vest', 45.00),

    ('BB20000', 'NO',now() - interval '2 days', 'Bergen nord', 30.00),
    ('BB20000', 'NO',now() - interval '2 hours', 'Bergen nord', 30.00),

    (NULL,      NULL,now() - interval '6 days', 'Bergen vest', 45.00),
    (NULL,      NULL,now() - interval '5 hours', 'Bergen nord', 30.00);