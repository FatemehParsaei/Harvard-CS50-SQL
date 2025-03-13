CREATE TABLE "passengers" (

    "first_name" TEXT,

    "last_name" TEXT,

    "age" INTEGER,

    "id" INTEGER,

    PRIMARY KEY("id")

);




CREATE TABLE "check-ins" (

    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,

    "flight_id" INTEGER,

    "passenger_id" INTEGER,

    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),

    FOREIGN KEY("flight_id") REFERENCES "flights"("id")

);




CREATE TABLE "airlines" (

    "name" TEXT,

    "concourse" TEXT,

    "id" INTEGER,

    PRIMARY KEY("id")

);




CREATE TABLE "flights" (

    "number" INTEGER,

    "airline_id" INTEGER,

    "departing_from" TEXT NOT NULL,

    "heading_to" TEXT NOT NULL,

    "id" INTEGER,

    "dep_datetime" NUMERIC NOT NULL,

    "arrival_datetime" NUMERIC NOT NULL,

    PRIMARY KEY("id"),

    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")

);
