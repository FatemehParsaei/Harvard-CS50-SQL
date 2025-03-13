CREATE TABLE "users"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT,
    "location" TEXT,
    "year_founded" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "location" TEXT,
    "industry" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connectpeople"(
    "first_user" INTEGER,
    "second_user" INTEGER,
    FOREIGN KEY("first_user") REFERENCES "users"("id"),
    FOREIGN KEY("second_user") REFERENCES "users"("id")
);

CREATE TABLE "connectschool"(
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" INTEGER NOT NULL,
    "end_date" INTEGER NOT NULL,
    "degree" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "connectcompany"(
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" INTEGER NOT NULL,
    "end_date" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
