CREATE TABLE "meteorites_temp" (

    name TEXT,

    id INTEGER,

    nametype TEXT,

    class TEXT,

    mass REAL,

    discovery TEXT,

    year INTEGER,

    lat real,

    long real,

    PRIMARY KEY('id')
);





.import --csv --skip 1 meteorites.csv meteorites_temp






UPDATE meteorites_temp SET mass = NULL WHERE mass = 0;

UPDATE meteorites_temp SET lat = NULL WHERE lat = 0;

UPDATE meteorites_temp SET long = NULL WHERE long = 0;

UPDATE meteorites_temp SET year = NULL WHERE year like '';





UPDATE meteorites_temp SET mass = round(mass,2), lat = round(lat,2), long = round(long,2);





CREATE TABLE "meteorites" (

    name TEXT,

    id INTEGER,

    class TEXT,

    mass REAL,

    discovery TEXT,

    year INTEGER,

    lat real,

    long real,

    PRIMARY KEY('id')
);







INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")

SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp"

WHERE "nametype" NOT LIKE '%relict%'

ORDER BY "year", "name";
