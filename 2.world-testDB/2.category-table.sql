USE world_test;

# Create table Category
CREATE TABLE Category (
	CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);


# Changne the type of column
ALTER TABLE category
CHANGE `CategoryName` `Categoryname` VARCHAR(255);
DESCRIBE category;


# Modify column datatype
ALTER TABLE category
MODIFY Categoryname CHAR(255);
DESCRIBE category;