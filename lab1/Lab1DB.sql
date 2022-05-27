CREATE TABLE "user" (
  "id" serial PRIMARY KEY,
  "name" VARCHAR(255),
  "surname" VARCHAR(255)
);

CREATE TABLE "result" (
  "user_id" INTEGER,
  "group_id" INTEGER,
  "rating" FLOAT,
  "day" DATE,
  PRIMARY KEY ("user_id", "group_id")
);

CREATE TABLE "group" (
  "id" serial PRIMARY KEY,
  "subject_area_id" INTEGER,
  "name" VARCHAR
);

CREATE TABLE "subject_area" (
  "id" serial PRIMARY KEY,
  "budget_id" INTEGER,
  "title" VARCHAR(255)
);

CREATE TABLE "budget" (
  "id" serial PRIMARY KEY,
  "dollars" INTEGER
);

ALTER TABLE "result" ADD CONSTRAINT "group_result" FOREIGN KEY ("group_id") REFERENCES "group" ("id") ON DELETE CASCADE;

ALTER TABLE "result" ADD CONSTRAINT "user_result" FOREIGN KEY ("user_id") REFERENCES "user" ("id") ON DELETE CASCADE;

ALTER TABLE "group" ADD CONSTRAINT "subject_area_group" FOREIGN KEY ("subject_area_id") REFERENCES "subject_area" ("id") ON DELETE CASCADE;

ALTER TABLE "subject_area" ADD CONSTRAINT "budget_subject_area" FOREIGN KEY ("budget_id") REFERENCES "budget" ("id") ON DELETE CASCADE;

