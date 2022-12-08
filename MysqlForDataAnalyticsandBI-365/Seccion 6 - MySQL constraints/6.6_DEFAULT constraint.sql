DROP TABLE customers

CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

-- add a “gender” column in the “customers” table, and will then insert a new record in it.
ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

-- insert values in the table customers deliberately leaving the number of complaints column
--  with no values
INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

-- to prove this we can make a check by selecting the list of all records in the customer table
SELECT * FROM customers;

-- delete constraint DEFAULT
ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT ;
