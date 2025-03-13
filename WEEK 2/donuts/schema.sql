CREATE TABLE "ingredients"(
    "name" TEXT NOT NULL,
    "price_per_unit" REAL,
    "id" INTEGER,
    "unit" Text,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "name" TEXT NOT NULL,
    "gluten_free" INTEGER,
    "price_per_donut" REAL,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "includes"(
    "donut_id" INTEGER,
    "ing_id" INTEGER,
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ing_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orderdonuts"(
    "donut_id" INTEGER,
    "order_id" INTEGER,
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);
