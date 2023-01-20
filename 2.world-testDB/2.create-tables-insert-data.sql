USE world_test;

# Create 3 more tables
CREATE TABLE Continent(
    ContinentID INT PRIMARY KEY,
    ContinentName VARCHAR(255) NOT NULL
);

CREATE TABLE Country(
    CountryID INT NOT NULL PRIMARY KEY,
    CountryName VARCHAR(255) NOT NULL,
    ContinentID INT NOT NULL,
    FOREIGN KEY (ContinentID) REFERENCES Continent(ContinentID)
);

CREATE TABLE Event(
    EventID INT PRIMARY KEY,
    EventName VARCHAR(8000) NOT NULL,
    EventDetails VARCHAR(8000) NOT NULL,
    EventDate DATE NOT NULL,
    CountryID INT NOT NULL,
    CategoryID int NULL,
    FOREIGN KEY (CountryID) REFERENCES Country(CountryID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);


# Insert Data into table
INSERT Category (CategoryID, CategoryName) VALUES (2, 'Alien life');
INSERT Category (CategoryID, CategoryName) VALUES (3, 'Exploration');
INSERT Category (CategoryID, CategoryName) VALUES (4, 'Natural world');
INSERT Category (CategoryID, CategoryName) VALUES (5, 'Death and disaster');
INSERT Category (CategoryID, CategoryName) VALUES (6, 'War and conflict');
INSERT Category (CategoryID, CategoryName) VALUES (7, 'Sports');
INSERT Category (CategoryID, CategoryName) VALUES (8, 'Economy');
INSERT Category (CategoryID, CategoryName) VALUES (9, 'Entertainment and culture');
INSERT Category (CategoryID, CategoryName) VALUES (10, 'Health and medicine');
INSERT Category (CategoryID, CategoryName) VALUES (11, 'Love and relationships');
INSERT Category (CategoryID, CategoryName) VALUES (12, 'Science and technology');
INSERT Category (CategoryID, CategoryName) VALUES (13, 'Old');
INSERT Category (CategoryID, CategoryName) VALUES (14, 'Transport');
INSERT Category (CategoryID, CategoryName) VALUES (15, 'Energy');
INSERT Category (CategoryID, CategoryName) VALUES (16, 'Royalty and monarchy');
INSERT Category (CategoryID, CategoryName) VALUES (17, 'Crime and legal');
INSERT Category (CategoryID, CategoryName) VALUES (18, 'Religion');
INSERT Category (CategoryID, CategoryName) VALUES (19, 'Education');
INSERT Category (CategoryID, CategoryName) VALUES (20, 'General');

INSERT Continent (ContinentID, ContinentName) VALUES (1, 'Asia');
INSERT Continent (ContinentID, ContinentName) VALUES (2, 'Africa');
INSERT Continent (ContinentID, ContinentName) VALUES (3, 'Europe');
INSERT Continent (ContinentID, ContinentName) VALUES (4, 'Australasia');
INSERT Continent (ContinentID, ContinentName) VALUES (5, 'South America');
INSERT Continent (ContinentID, ContinentName) VALUES (6, 'North America');
INSERT Continent (ContinentID, ContinentName) VALUES (7, 'Antarctic');
INSERT Continent (ContinentID, ContinentName) VALUES (8, 'Not applicable');