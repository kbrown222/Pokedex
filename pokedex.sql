-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "POKEDEX" (
    "nationalDexNumber" INT   NOT NULL UNIQUE,
    "name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "weight" FLOAT,
    "height" FLOAT,
    "type1" VARCHAR   NOT NULL,
    "type2" VARCHAR   NOT NULL,
    "evolvesFrom" VARCHAR   NOT NULL,
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
        "nationalDexNumber"
     )
);

CREATE TABLE "ABILITIES" (
    "nationalDexNumber" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "ability1" VARCHAR   NOT NULL,
    "ability2" VARCHAR   NOT NULL,
    "ability3" VARCHAR   NOT NULL,
    "hiddenAbility" VARCHAR   NOT NULL,
    CONSTRAINT "pk_ABILITIES" PRIMARY KEY (
        "nationalDexNumber"
     )
);

CREATE TABLE "HELD-ITEMS" (
    "name" VARCHAR   NOT NULL,
    "item1" VARCHAR   NOT NULL,
    "item2" VARCHAR   NOT NULL,
    "item3" VARCHAR   NOT NULL,
    CONSTRAINT "pk_HELD-ITEMS" PRIMARY KEY (
        "name"
     )
);

CREATE TABLE "POPULAR-MOVESETS" (
    "name" VARCHAR   NOT NULL,
    "nature" VARCHAR   NOT NULL,
    "ability" VARCHAR   NOT NULL,
    "heldItem" VARCHAR   NOT NULL,
    "move1" VARCHAR   NOT NULL,
    "move2" VARCHAR   NOT NULL,
    "move3" VARCHAR   NOT NULL,
    "move4" VARCHAR   NOT NULL,
    CONSTRAINT "pk_POPULAR-MOVESETS" PRIMARY KEY (
        "name"
     )
);

ALTER TABLE "STATS" ADD CONSTRAINT "fk_STATS_nationalDexNumber" FOREIGN KEY("nationalDexNumber")
REFERENCES "POKEDEX" ("nationalDexNumber");

ALTER TABLE "ABILITIES" ADD CONSTRAINT "fk_ABILITIES_nationalDexNumber" FOREIGN KEY("nationalDexNumber")
REFERENCES "POKEDEX" ("nationalDexNumber");

