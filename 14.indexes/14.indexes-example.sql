USE sakila;

# Example
CREATE TABLE members_indexed (
membership_number INT NOT NULL AUTO_INCREMENT,
full_names VARCHAR(150) DEFAULT NULL,
gender VARCHAR(6) DEFAULT NULL,
date_of_birth DATE DEFAULT NULL,
physical_address VARCHAR(255) DEFAULT NULL,
contact_number VARCHAR(75) DEFAULT NULL,
PRIMARY KEY (membership_number),
INDEX(full_names)
);

# show indexes
SHOW INDEXES FROM members_indexed;

# drop index
DROP INDEX full_names ON members_indexed;