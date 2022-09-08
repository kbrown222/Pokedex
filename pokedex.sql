-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP table if exists "STATS";
DROP table if exists "ABILITIES";
DROP table if exists "POKEDEX";

CREATE TABLE "POKEDEX" (
    "nationalDexNumber" INT NOT NULL UNIQUE,
    "name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "weight" FLOAT,
    "height" FLOAT,
    "type1" VARCHAR   NOT NULL,
    "type2" VARCHAR   NOT NULL,
    "evolvesFrom" VARCHAR,
    CONSTRAINT "pk_POKEDEX" PRIMARY KEY (
        "nationalDexNumber","name"
     )
);

CREATE TABLE "STATS" (
    "nationalDexNumber" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "baseStat" INT   NOT NULL,
    "healthPoints" INT   NOT NULL,
    "attack" INT   NOT NULL,
    "defense" INT   NOT NULL,
    "specialAttack" INT   NOT NULL,
    "specialDefense" INT   NOT NULL,
    "speed" INT   NOT NULL,
    CONSTRAINT "pk_STATS" PRIMARY KEY (
        "nationalDexNumber","name"
     )
);

ALTER TABLE "STATS" ADD CONSTRAINT "fk_STATS_nationalDexNumber" FOREIGN KEY("nationalDexNumber")
REFERENCES "POKEDEX" ("nationalDexNumber");


CREATE TABLE "ABILITIES" (
    "Ability" VARCHAR   NOT NULL,
    "Hidden" VARCHAR   NOT NULL,
    "Pokemon" VARCHAR   NOT NULL
);
 

