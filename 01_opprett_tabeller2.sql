DROP TABLE IF EXISTS Medlem CASCADE;
DROP TABLE IF EXISTS poststed CASCADE;

create table Medlem (
    medlemsnr       BIGSERIAL primary key,
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
    postnr          varchar(4) primary key,
    sted            varchar(30)
);

CREATE TABLE lokallag (
    lagnavn         varchar(50) primary key,
    leder_medlemsnr BIGSERIAL,
    mote_adresse    varchar(50),
    postnr          varchar(4) references poststed(postnr)
)

