DROP TABLE IF EXISTS passering CASCADE;
DROP TABLE IF EXISTS bil CASCADE;

CREATE TABLE bil (
    regnr           VARCHAR(20) primary key,
    eier_navn       VARCHAR(100) not null,
    eier_adresse    VARCHAR(200) not null,
    epost           VARCHAR(150) not null,
    telefonnummer   VARCHAR(30) not null,
);

CREATE TABLE passering (
    passering_id    BIGSERIAL PRIMARY KEY,
    regnr           VARCHAR(20) NULL,
    tidspunkt       TIMESTAMPTZ NOT NULL,
    bompengebod     VARCHAR(100) NOT NULL,
    belop           NUMERIC(10,2) NOT NULL CHECK (belop >= 0),

    CONSTRAINT fk_passering_bil
                    foreign key (regnr)
                    references bil(regnr)
                    on update cascade
                    on delete set null
);

CREATE INDEX idx_passering_regnr_tidspunkt ON passering(regnr, tidspunkt DESC);
CREATE INDEX idx_passering_tidspunkt ON passering(tidspunkt DESC);