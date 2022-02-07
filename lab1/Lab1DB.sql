CREATE TABLE "user" (
  "id" serial PRIMARY KEY,
  "name" varchar(255),
  "surname" varchar(255)
);

CREATE TABLE "result" (
  "user_id" integer,
  "group_id" integer,
  "rating" float,
  "day" date,
  PRIMARY KEY ("user_id", "group_id")
);

CREATE TABLE "group" (
  "id" serial PRIMARY KEY,
  "degree_id" integer,
  "subject_area_id" integer,
  "name" varchar
);

CREATE TABLE "subject_area" (
  "id" serial PRIMARY KEY,
  "budget_id" integer,
  "title" varchar(255)
);

CREATE TABLE "budget" (
  "id" serial PRIMARY KEY,
  "dollars" integer
);

ALTER TABLE "result" ADD CONSTRAINT "group_result" FOREIGN KEY ("group_id") REFERENCES "group" ("id");

ALTER TABLE "result" ADD CONSTRAINT "user_result" FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "group" ADD CONSTRAINT "subject_area_group" FOREIGN KEY ("subject_area_id") REFERENCES "subject_area" ("id");

ALTER TABLE "subject_area" ADD CONSTRAINT "budget_subject_area" FOREIGN KEY ("budget_id") REFERENCES "budget" ("id");

