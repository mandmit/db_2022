CREATE TABLE "user" (
  "id" serial,
  "group_id" integer,
  "name" varchar(255),
  "surname" varchar(255),
  "rating" integer,
  "day" date,
  PRIMARY KEY ("id", "group_id")
);

CREATE TABLE "group" (
  "id" serial PRIMARY KEY,
  "degree_id" integer,
  "subject_area_id" integer
);

CREATE TABLE "subject_area" (
  "id" serial PRIMARY KEY,
  "budget_id" integer,
  "title" varchar(255)
);

CREATE TABLE "degree" (
  "id" serial PRIMARY KEY,
  "title" varchar(255),
  "experience" integer
);

CREATE TABLE "budget" (
  "id" serial PRIMARY KEY,
  "dollars" integer
);

ALTER TABLE "user" ADD CONSTRAINT "group_user" FOREIGN KEY ("group_id") REFERENCES "group" ("id");

ALTER TABLE "group" ADD CONSTRAINT "subject_area_group" FOREIGN KEY ("subject_area_id") REFERENCES "subject_area" ("id");

ALTER TABLE "group" ADD CONSTRAINT "degree_group" FOREIGN KEY ("degree_id") REFERENCES "degree" ("id");

ALTER TABLE "subject_area" ADD CONSTRAINT "budget_subject_area" FOREIGN KEY ("budget_id") REFERENCES "budget" ("id");

