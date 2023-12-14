-- Contacts table
CREATE TABLE contacts (
  contact_id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);

-- Category table
CREATE TABLE category (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR
);

-- Subcategory table
CREATE TABLE subcategory (
  subcategory_id SERIAL PRIMARY KEY,
  subcategory_name VARCHAR
);

-- Campaign table
CREATE TABLE campaign (
	cf_id SERIAL PRIMARY KEY,
	contact_id INT REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
 	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
 	country VARCHAR,
 	currency VARCHAR,
 	launch_date DATE,
 	end_date DATE,
	category_id INT REFERENCES category(category_id),
 	subcategory_id INT REFERENCES subcategory(subcategory_id)
);

COPY contacts FROM '/Users/aultsshit/DABC/Project2/CrowdFunding_ETL/Notebook_&_Files/Resources/contacts.csv' DELIMITER ',' CSV HEADER;
COPY category FROM '/Users/aultsshit/DABC/Project2/CrowdFunding_ETL/Notebook_&_Files/Resources/category.csv' DELIMITER ',' CSV HEADER;
COPY subcategory FROM '/Users/aultsshit/DABC/Project2/CrowdFunding_ETL/Notebook_&_Files/Resources/subcategory.csv' DELIMITER ',' CSV HEADER;
COPY campaign FROM '/Users/aultsshit/DABC/Project2/CrowdFunding_ETL/Notebook_&_Files/Resources/campaign.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

