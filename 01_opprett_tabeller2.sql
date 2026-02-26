DROP TABLE IF EXISTS Medlem CASCADE;
DROP TABLE IF EXISTS poststed CASCADE;
DROP TABLE IF EXISTS lokallag CASCADE;
DROP TABLE IF EXISTS medlemsavgift CASCADE;

create table Medlem (
    medlemsnr       BIGSERIAL   primary key,
    fornavn         varchar(50) NOT NULL,
    etternavn       varchar(50) NOT NULL,
    telefonnr       varchar(20) NOT NULL,
    epost           varchar(20) NOT NULL,
    postnr          varchar(4)  NOT NULL references poststed(postnr),
    adresse         varchar(50) NOT NULL,
    medlemskap      boolean     NOT NULL,
    lagnavn         varchar(50) NOT NULL references lokallag(lagnavn)
);

create table poststed (
    postnr          varchar(4)  primary key,
    sted            varchar(30) NOT NULL
);

CREATE TABLE lokallag (
    lagnavn         varchar(50) primary key,
    leder_medlemsnr BIGINT      NOT NULL,
    mote_adresse    varchar(50) NOT NULL,
    postnr          varchar(4)  NOT NULL references poststed(postnr)
);

create table medlemsavgift (
    medlemsnr       BIGINT      NOT NULL references Medlem(medlemsnr),
    aar             int         NOT NULL,
    betalt          boolean     NOT NULL,
    betalt_dato     date,
    primary key (medlemsnr, aar),
    CONSTRAINT ck_aar check (aar > 1900 AND aar <= 2026),
    CONSTRAINT ck_betalt_dato check (
        (betalt = false And betalt_dato IS NULL)
        or (betalt = true AND betalt_dato IS NOT NULL))
)