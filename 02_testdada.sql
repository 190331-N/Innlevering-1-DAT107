INSERT INTO bil (regnr, eier navn, eier_adresse, epost, telefonnummer) values
    ('AA10000', 'Testnavn 10', 'Bergen 10', '10@example.com', '1111111'),
    ('BB20000', 'Testnavn 20', 'Bergen 20', '20@example.com', '2222222'),
    ('CC30000', 'Testnavn 30', 'Bergen 30', '30@example.com', '3333333'),

INSERT INTO passering (regnr, tidspunkt, bompengebod, belop) VALUES
    ('AA10000', now() - interval '7 days', 'Bergen vest', 45.00),
    ('AA10000', now() - interval '3 days', 'Bergen vest', 45.00),
    ('AA10000', now() - interval '1 day', 'Bergen vest', 45.00),

    ('BB20000', now() - interval '2 days', 'Bergen nord', 30.00),
    ('BB20000', now() - interval '2 hours', 'Bergen nord', 30.00),

    (NULL,      now() - interval '6 days', 'Bergen vest', 45.00),
    (NULL,      now() - interval '5 hours', 'Bergen nord', 30.00),