-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Contacts table

CREATE TABLE "contacts" (
    "contact_id" SERIAL   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL
);

-- Category table
CREATE TABLE "category" (
    "category_id" SERIAL   NOT NULL,
    "category_name" VARCHAR   NOT NULL
);

-- Subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" SERIAL   NOT NULL,
    "subcategory_name" VARCHAR   NOT NULL
);

-- Campaign table
CREATE TABLE "campaign" (
    "cf_id" SERIAL   NOT NULL,
    "contact_id" INT   NOT NULL,
    "category_id" INT   NOT NULL,
    "subcategory_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

