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

INSERT Country (CountryID, CountryName, ContinentID) VALUES (1, 'Ukraine', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (2, 'France', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (3, 'Germany', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (4, 'Italy', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (5, 'United States', 6);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (6, 'Bosnia and Herzegovina', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (7, 'United Kingdom', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (8, 'Japan', 1);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (9, 'Indonesia', 1);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (10, 'Vietnam', 1);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (11, 'Russia', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (12, 'Switzerland', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (13, 'Space', 8);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (14, 'Argentina', 5);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (15, 'Antarctica', 7);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (16, 'Belgium', 3);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (17, 'Egypt', 2);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (18, 'Ghana', 2);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (19, 'China', 1);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (20, 'Not set', 1);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (21, 'International', 8);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (22, 'Marshall Islands', 4);
INSERT Country (CountryID, CountryName, ContinentID) VALUES (23, 'Iraq', 3);

INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (1,'Chernobyl','Reactor 4 at a nuclear power plant in Chernobyl, Ukraine exploded, blowing the 1,000 ton cover off the top of the reactor.','1986-04-26',1,5);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (2,'Pearl Harbour','Japan launched an attack dubbed ‘Operation Z’ on Pearl Harbour, a United States naval base in Hawaii. The U.S. declared war on Japan the following day, bringing them into World War II.','1941-12-07',5,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (3,'World War 1 began','Often referred to as The Great War, World War I resulted in the death of over 16 million combatants and civilians. The catalyst that spurred the outbreak of fighting was the assassination of Archduke Franz Ferdinand of Austria-Hungary in June 1914, which took place in Sarajevo on 28th June, a month earlier.','1914-07-28',6,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (4,'World War 1 ends','The first world war ended on what is now known as Armistice Day or Remembrance Day.  The armistice was signed in Compiegne in France.','1918-11-11',2,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (5,'The UK declares war on Germany','Following Germanys invasion of Poland, the UKs Prime Minister Neville Chamberlain concluded a speech with the words \"I have to tell you now that no such undertaking has been received and that consequently this country is at war with Germany.\"','1939-09-03',7,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (6,'Liberation of Bergen-Belsen','Up to 60,000 prisoners were liberated by the British 11th Armoured Division, although many subsequently died.','1945-04-15',3,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (7,'World War II ends','Japanese representatives aboard the USS Missouri surrender, in effect ending World War II.','1945-09-02',8,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (8,'Hiroshima','The United States dropped an atomic bomb on the city of Hiroshima (Nagasaki followed 3 days later), leading to Japans surrender, ending World War II.  At least 129,000 people were killed.','1945-08-06',8,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (9,'Asian tsunami','An earthquake of magniture 9.1-9.3 occurred, with the epicentre off the west coast of Sumatra, Indonesia, killing 230,000 people in 14 countries.','2004-12-26',21,5);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (10,'Liberation/fall of Saigon','The Peoples Army of Vietnam and the National Liberation Front of South Vietnam captured the capital of the south of the country, ending the Vietnam War','1975-04-30',10,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (11,'9/11 attacks','Two hijacked planes crashed into the twin towers of the world trade centre, killing over 3,000 people  (among them over 400 firefighters and police officers).','2001-09-11',5,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (12,'Brexit vote','By a narrow majority Britain votes to leave the European Union (England and Wales voted to leave, although Scotland and Northern Ireland voted to remain).','2016-06-23',7,1);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (13,'London Olympic games','Widely considered a success, the London Olympics started on 27th July with an opening ceremony which included the Spice Girls and a dramatisation of the NHS.','2012-07-27',7,7);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (14,'Lehman Brothers collapses','Financial services firm Lehman Brothers filed for Chapter 11 bankruptcy protection on this date.  The filing remains the largest bankruptcy filing in U.S. history, with Lehman holding over $600 billion in assets.','2008-09-15',5,8);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (15,'Last edition of \"Top of the Pops\"','The last edition of \"Top of the Pops\" is broadcast.  The show was hosted by Jimmy Savile, subsquently to be disgraced as a serial sex offender.','2006-07-30',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (16,'London Eye opens','The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London, built to celebrate the millennium (although it opened late).','2000-03-09',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (17,'First Harry Potter Book published','Harry Potter and the Philosophers Stone was first published, the first of an eventual series of 7 by the authoress JK Rowling','1997-07-30',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (18,'Teletubbies first broadcast','Tinky-Winky, Dipsy, Laa Laa and Po (not forgetting Nu Nu, the vacuum cleaner) first hit the UKs television screens on this momentous date in history.','1997-03-31',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (19,'Channel Tunnel opens','The Channel Tunnel was officially opened, one year later than originally planned, by Queen Elizabeth II and the French president, François Mitterrand, in a ceremony held in Calais on this date.','1994-05-06',2,14);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (20,'Premier League starts','The first season ended (as it did 11 times subsequently) with Alex Ferguson ’s Mancheser United taking the trophy. Teddy Sheringham finished as top scorer with 22 goals (one for Nottingham Forest , 21 for Spurs ).','1992-08-15',7,7);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (21,'Margaret Thatcher resigns','Rather than face a humiliating second round of the Conservative Party leadership election, Margraret Thatcher bows out after 11 years in government.','1990-11-22',7,1);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (22,'Coup attempt in Russia','The 1991 Soviet coup détat attempt, also known as the August Putsch or August Coup, was an attempt by members of the Soviet Unions government to take control of the country from Soviet president Mikhail Gorbachev.','1991-08-19',11,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (23,'Google launched','Google filed for incorporation in California on this date, bringing a new verb to the English language.','1998-09-04',5,12);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (24,'Hillsborough','96 people died in the crowd gathered to watch a football match between Liverpool and Nottingham Forest  Lord Justice Taylor’s report on the disaster subsequently found there had been a series of problems leading to the huge death toll.','1989-04-15',7,5);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (25,'World Wide Web launched','On this date Tim Berners-Lee and Robert Cailliau, a Belgian engineer, issued a formal detailed proposal for a project, the acceptance of which initiated The Web.','1990-11-12',12,12);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (26,'Great Storm of 1987','After Michael Fish (the weatherman) memorably dismisses the chances of a severe storm causing problems, Sevenoaks becomes NoOaks and powerful winds cause chaos in the South-East of England.','1987-10-15',7,5);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (27,'M25 opens','The last stage of the M25, Londons orbital motorway, opened on this date, ensuring traffic jams for years to come.','1986-10-29',7,14);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (28,'Live Aid','Bob Geldof organises a host of celebrities to play at Wembley Stadium to raise money to alleviate hunger in Africa - by common consent Queen steal the show.','1985-07-13',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (29,'Miners\ strike starts','Arthur Scargill begins a coal miners strike which leads to bitter confrontations between miners and police, most notably at the Orgreave coking works','1984-06-18',7,1);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (30,'Shergar kidnapped','The racehorse Shergar was kidnapped (presumably being held in the same place as Lord Lucan, who disappeared from public life somewhat earlier).','1983-02-08',7,7);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (32,'Monty Python first broadcast','John Cleese, Michael Palin, Terry Jones, Terry Gilliam, Graham Chapman and Eric Idle launch Monty Pythons Flying Circus on TV.  They re all naughty boys!','1969-10-05',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (33,'Decimalisation','Britain says goodbye to base 12 currency and thruppeny bits, when 12 old pennies suddenly became worth 5 new ones.','1971-02-15',7,8);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (34,'Bloody Sunday','At a civil rights march in Derry, 30th January, 1972, thirteen people were shot dead (a fourteenth would die months later in hospital).','1972-01-30',7,6);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (35,'Britain joins the EEC','On this date, Britain (along with Ireland and Denmark) joined the European Community, as it was then called.  In Britain\s case, temporarily it would seem …','1973-01-01',7,1);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (36,'Microsoft founded','Microsoft ((the first version was hyphenated as Micro-Soft) was founded on this date by Bill Gates (who was 19 at the time) and Paul Allen (who was 22).  Curiously, the company didnt crash and have to be re-booted.','1975-04-04',5,12);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (37,'Fawlty Towers first broadcast','John Cleeses Basil Fawlty entered the UK culture, as did the late Andrew Sachss Manuel.  Or should that be \"Manuel!\"?','1975-09-19',7,9);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (39,'First test-tube baby','Louise Joy Brown born in Oldham, weighing 5lb 12oz.  Patrick Steptoe, a consultant gynaecologist, and Robert Edwards, a research physiologist, had been developing their techniques in the field of in vitro (in glass) fertilisation since the mid-1960s.','1978-07-25',7,10);
INSERT event (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (40,'Space Invaders arrive','On this date the first Space Invaders Machine arrived in Britain, ready for the forthcoming Amusements Trade Exhibition in London.','1979-01-22',7,9);
