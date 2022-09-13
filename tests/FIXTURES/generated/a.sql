-- create table t(
--     a int,
--     adding int,
--     modifying int generated always as identity,
--     removing int generated by default as identity
-- );

create table t();

CREATE TABLE "demo_gencol" (
            "id" serial           PRIMARY KEY, -- PRIMARY KEY
    "the_column" TEXT               NULL GENERATED ALWAYS AS ('the original generated value') STORED, -- The column that is originally GENERATED, then changed not to be
    "the_column2" text
);

