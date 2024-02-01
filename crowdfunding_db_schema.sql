--Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "categorycsv" (
    "category_id" VARCHAR(5)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_categorycsv" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contactscsv" (
    "contact_id" VARCHAR(5)   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contactscsv" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategorycsv" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_subcategorycsv" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaigncsv" (
    "cf_id" VARCHAR(10)   NOT NULL,
    "contact_id" VARCHAR(5)   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "discription" VARCHAR(100)   NOT NULL,
    "goal" FLOAT(20)   NOT NULL,
    "pledged" FLOAT(20)   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(5)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_campaigncsv" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaigncsv" ADD CONSTRAINT "fk_campaigncsv_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contactscsv" ("contact_id");

ALTER TABLE "campaigncsv" ADD CONSTRAINT "fk_campaigncsv_category_id" FOREIGN KEY("category_id")
REFERENCES "categorycsv" ("category_id");

ALTER TABLE "campaigncsv" ADD CONSTRAINT "fk_campaigncsv_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategorycsv" ("subcategory_id");

--check tables for proper import of data
SELECT * FROM campaigncsv
SELECT * FROM categorycsv
SELECT * FROM contactscsv
SELECT * FROM subcategorycsv


