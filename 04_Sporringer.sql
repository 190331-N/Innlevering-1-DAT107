--DELOPPGAVER: E, F, H, I, J

--OPPGAVE E
SELECT
    p.passering_id,
    p.tidspunkt,
    p.bompengebelop,
    p.regnr,
    b.eier,
    b.epost
FROM passering p
LEFT JOIN bil b
ON p. regnr = b.regnr
ORDER BY p.tidspunkt;

--oppgave F:
SELECT
    p.passering_id,
    p.tidspunkt,
    p.bompengebelop,
    p.regnr,
    b.eier,
    b.epost
FROM  passering p
Inner JOIN bil b
ON p.regnr = b.regnr
ORDER BY p.tidspunk;

--Oppgave H:
SELECT
    p.regnr,
    COUNT(*) AS antall_passeringer
FROM passering p
WHERE p.regnr IS NOT NULL
GROUP BY p.regnr
ORDER BY antall_passeringer DESC, p.regnr;

--OPPGAVE I:
SELECT
    p.passering_id,
    p.tidspunkt,
    p.bompengebelop,
    p.regnr
FROM passering p
WHERE p.regnr = 'AA10000'
ORDER BY p.tidspunkt DESC
LIMIT 1;

--OPPGAVE j:
SELECT
    COUNT (*) AS antall_uten_regnr
FROM passering
WHERE regnr IS NULL;
