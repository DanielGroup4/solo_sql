-- create the companies table
CREATE TABLE companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY (company_id)
);

-- and default value of the company's name to be “X”.
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) DEFAULT "X";

-- setting the “headquarters phone number” to be the unique key
ALTER TABLE companies
ADD UNIQUE KEY (headquarters_phone_number);

-- cheking
SELECT * FROM companies;

-- drop table
DROP TABLE companies