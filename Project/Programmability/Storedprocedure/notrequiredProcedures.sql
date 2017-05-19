--Loading data onto db

INSERT INTO Cities (City_Name) VALUES ('Baltimore'),('Bellflower'),('Bellingham'),('Berkeley'),('Bogota'),('Bremerton'),('Brisbane'),('Budapest'),('Burbank'),('Burien'),('Burlingame'),('Bury'),('Calgary'),('Cambridge'),('Chula Vista'),('Cincinnati'),('Coffs Harbour'),('Colma'),('Concord'),('Corvallis'),('El Cajon'),('Everett'),('Gateshead'),('Haney'),('Hervey Bay'),('Issaquah'),('Kirkland'),('Kiev'),('Kiyv'),('Kyiv'),('Lake Oswego'),('Lane Cove'),('Langley'),('Lebanon'),('Leeds'),('London'),('Los Angeles'),('Lynnwood'),('Marysville'),('Matraville'),('Metchosin'),('Mill Valley'),('Milsons Point'),('Milton Keynes'),('N. Vancouver'),('New York'),('Newcastle'),('Newton'),('North Ryde'),('North Sydney'),('Oak Bay'),('Oakland'),('Olympia'),('Oregon City'),('Oxford'),('Peterborough'),('Philadelphia'),('Plovdiv'),('Port Macquarie'),('Port Orchard'),('Portland'),('Puyallup'),('Redmond'),('Rhodes'),('San Diego'),('Santa Cruz'),('Santa Monica'),('Seattle'),('Sedro Woolley'),('Shawnee'),('Silverwater'),('South Melbourne'),('Springwood'),('Stoke-on-Trent'),('Torrance'),('Townsville'),('Walla Walla'),('Warrnambool'),('West Covina'),('Wollongong'),('Woodland Hills'),('Yakima');
INSERT INTO Countries (Countries_Name) VALUES ('Hungary'),('USA'),('Colombia'),('Ukraine'),('Australia'),('Bulgaria');
INSERT INTO Event (Event_Title, Date, Cities_Country_Code, Countries_ID, Audience) VALUES 
('SQLSaturday #626 - Budapest 2017','5/6/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Budapest'),1,'Europe/Middle East/Africa'),
('SQLSaturday #615 - Baltimore 2017','5/6/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Baldimore'),2,'Canada/US'),
('SQLSaturday #608 - Bogota 2017','5/13/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Bogota'),3,'Latin America'),
('SQLSaturday #616 - Kyiv 2017','5/20/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Kyiv'),4,'Europe/Middle East/Africa'),
('SQLSaturday #588 - New York City 2017','5/20/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'New York'),2,'Canada/US'),
('SQLSaturday #630 - Brisbane 2017','5/27/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Brisbane'),5,'Asia Pacific'),
('SQLSaturday #599 - Plovdiv 2017','5/27/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Plovdiv'),6,'Europe/Middle East/Africa'),
('SQLSaturday #638 - Philadelphia 2017','6/3/2017',(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = 'Philadelphia'),2,'Canada/US');
INSERT INTO SPONSORS(Sponsor_Name) VALUES ('VMWare'),('Verizon Digital Media Services'),('Microsoft Corporation (GAP) (GAP Sponsor)'),('Tintri'),('Amazon Web Services, LLC'),('Pyramid Analytics (GAP Sponsor)'),('Pure Storage'),('Profisee'),('NetLib Security'),('Melissa Data Corp.'),('Red Gate Software'),('SentryOne'),('Hush Hush'),('COZYROC'),('SQLDocKit by Acceleratio Ltd.');
INSERT INTO Level (Sponsor_Level, Sponsor_Level_Name) VALUES (1,'Platinum Sponsor'),(2,'Gold Sponsor'),(3,'Silver Sponsor'),(4,'Bronze Sponsor');
INSERT INTO [Sponsor Level](Sponsor_ID, Sponsor_Level) VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,2),(9,3),(10,3),(11,3),(12,3),(13,4),(14,4),(15,4);
INSERT INTO Attendees(First_Name,Last_Name,Address,Cities_Country_Code,Zip,StateOrCountry,Email) VALUES ('Amanda','Long','10 Napa Ct.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lebanon'),'97355','Oregon','ALong@gmail.com'),('Christian','Shan','1000 Bidweld Street',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Haney'),'V2W 1W2','British Columbia','CShan@gmail.com'),('Troy','Sara','1002 N. Spoonwood Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Hervey Bay'),'4655','Queensland','TSara@gmail.com'),('Kaitlyn','Baker','1003 Matterhorn Ct',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lebanon'),'97355','Oregon','KBaker@gmail.com'),('Suzanne','Ma','1005 Matterhorn Ct.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Cambridge'),'CB4 4BZ','England','SMa@gmail.com'),('Anna','Jones','1005 Matterhorn Ct.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Mill Valley'),'94941','California','AJones@gmail.com'),('Carlos','Baker','1005 Tanager Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Corvallis'),'97330','Oregon','CBaker@gmail.com'),('Tanya','Munoz','1005 Tanager Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Milsons Point'),'2061','New South Wales','TMunoz@gmail.com'),('Tabitha','Gill','1006 Deercreek Ln',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bellflower'),'90706','California','TGill@gmail.com'),('Alexis','Lee','1006 Deercreek Ln',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Torrance'),'90505','California','ALee@gmail.com'),('Erick','Suri','101 Adobe Dr',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Coffs Harbour'),'2450','New South Wales','ESuri@gmail.com'),('Marcus','Evans','101 Adobe Dr',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Puyallup'),'98371','Washington','MEvans@gmail.com'),('Marcus','Clark','101, avenue de la Gare',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Peterborough'),'PB12','England','MClark@gmail.com'),('Gilbert','Xu','1010 Maple',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Baltimore'),'21201','Maryland','GXu@gmail.com'),('Paula','Rubio','1011 Yolanda Circle',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Berkeley'),'94704','California','PRubio@gmail.com'),('Julian','Isla','1011 Yolanda Circle',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'N. Vancouver'),'V7L 4J4','British Columbia','JIsla@gmail.com'),('Jesse','Scott','1013 Holiday Hills Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bremerton'),'98312','Washington','JScott@gmail.com'),('Naomi','Sanz','1013 Holiday Hills Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Gateshead'),'GA10','England','NSanz@gmail.com'),('Isabella','Lee','1015 Lynwood Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Metchosin'),'V9','British Columbia','ILee@gmail.com'),('Dawn','Yuan','1019 Carletto Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Berkeley'),'94704','California','DYuan@gmail.com'),('Olivia','Blue','1019 Mt. Davidson Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burien'),'98168','Washington','OBlue@gmail.com'),('Emmanuel','Lopez','1019 Mt. Davidson Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'London'),'SW8 4BG','England','ELopez@gmail.com'),('Nathan','Yang','102 Vista Place',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Santa Monica'),'90401','California','NYang@gmail.com'),('Gabrielle','Wood','1020 Book Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bremerton'),'98312','Washington','GWood@gmail.com'),('Katrina','Anand','1020 Carletto Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Matraville'),'2036','New South Wales','KAnand@gmail.com'),('Anthony','Jones','1020 Carletto Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Santa Cruz'),'95062','California','AJones@gmail.com'),('Natalie','Reed','1023 Hawkins Street',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lebanon'),'97355','Oregon','NReed@gmail.com'),('Dakota','Ross','1024 Walnut Blvd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Colma'),'94014','California','DRoss@gmail.com'),('Shawn','Goel','1025 Holly Oak Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Leeds'),'LE18','England','SGoel@gmail.com'),('Nicole','Diaz','1025 R St.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Kirkland'),'98033','Washington','NDiaz@gmail.com'),('Wyatt','Davis','1025 Yosemite Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Oregon City'),'97045','Oregon','WDavis@gmail.com'),('Christy','Huang','1028 Green View Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Chula Vista'),'91910','California','CHuang@gmail.com'),('Sydney','Evans','1028 Green View Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Oregon City'),'97045','Oregon','SEvans@gmail.com'),('Katherine','Baker','1037 Hayes Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Stoke-on-Trent'),'AS23','England','KBaker@gmail.com'),('Edward','Wood','1039 Adelaide St.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'West Covina'),'91791','California','EWood@gmail.com'),('Johnny','Rai','104 Hilltop Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Springwood'),'2777','New South Wales','JRai@gmail.com'),('Emily','Moore','104 Kaski Ln.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Portland'),'97205','Oregon','EMoore@gmail.com'),('Randy','Yang','1040 Greenbush Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Silverwater'),'2264','New South Wales','RYang@gmail.com'),('Roy','Ruiz','1040 Northridge Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'London'),'W1X3SE','England','RRuiz@gmail.com'),('Marshall','Sun','1044 San Carlos',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Cincinnati'),'45202','Ohio','MSun@gmail.com'),('Gabriella','Perez','1045 Lolita Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Torrance'),'90505','California','GPerez@gmail.com'),('Erika','Gill','1045 Lolita Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Townsville'),'4810','Queensland','EGill@gmail.com'),('Kathryn','Shen','1047 Las Quebradas Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'North Sydney'),'2055','New South Wales','KShen@gmail.com'),('Sharon','Yuan','1048 Burwood Way',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Hervey Bay'),'4655','Queensland','SYuan@gmail.com'),('Victoria','Lee','1048 Las Quebradas Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Walla Walla'),'99362','Washington','VLee@gmail.com'),('Brenda','Arun','1048 Las Quebradas Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Wollongong'),'2500','New South Wales','BArun@gmail.com'),('Alex','Scott','105 Clark Creek Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Port Macquarie'),'2444','New South Wales','AScott@gmail.com'),('Yolanda','Luo','105 Woodruff Ln.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bellingham'),'98225','Washington','YLuo@gmail.com'),('Martin','Vance','1050 Creed Ave',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'London'),'W10 6BL','England','MVance@gmail.com'),('Jeremy','Roberts','081, boulevard du Montparnasse',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Seattle'),'98104','Washington','JRoberts@yahoo.com'),('Amanda','Ramirez','1 Smiling Tree Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Los Angeles'),'90012','California','ARamirez@yahoo.com'),('Jada','Nelson','100, rue des Rosiers',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Everett'),'98201','Washington','JNelson@yahoo.com'),('Hunter','Wright','1002 N. Spoonwood Court',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Berkeley'),'94704','California','HWright@yahoo.com'),('Sierra','Wright','1005 Fremont Street',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Colma'),'94014','California','SWright@yahoo.com'),('Sarah','Simmons','1005 Valley Oak Plaza',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Langley'),'V3A 4R2','British Columbia','SSimmons@yahoo.com'),('Mandar','Samant','1005 Valley Oak Plaza',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'London'),'SW6 SBY','England','MSamant@yahoo.com'),('Isaiah','Rogers','1007 Cardinet Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'El Cajon'),'92020','California','IRogers@yahoo.com'),('Ian','Foster','1008 Lydia Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burbank'),'91502','California','IFoster@yahoo.com'),('Ben','Miller','101 Candy Rd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Redmond'),'98052','Washington','BMiller@yahoo.com'),('Sarah','Barnes','1011 Green St.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bellingham'),'98225','Washington','SBarnes@yahoo.com'),('Casey','Martin','1013 Buchanan Rd',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Port Macquarie'),'2444','New South Wales','CMartin@yahoo.com'),('Victoria','Murphy','1013 Buchanan Rd',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Yakima'),'98901','Washington','VMurphy@yahoo.com'),('Sydney','Rogers','1016 Park Avenue',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burbank'),'91502','California','SRogers@yahoo.com'),('Marvin','Hernandez','1019 Book Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Rhodes'),'2138','New South Wales','MHernandez@yahoo.com'),('Carlos','Carter','1019 Buchanan Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Woodland Hills'),'91364','California','CCarter@yahoo.com'),('Rebekah','Garcia','1019 Candy Rd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Coffs Harbour'),'2450','New South Wales','RGarcia@yahoo.com'),('Haley','Henderson','1019 Chance Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Sedro Woolley'),'98284','Washington','HHenderson@yahoo.com'),('Jacob','Taylor','1019 Kenwal Rd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lake Oswego'),'97034','Oregon','JTaylor@yahoo.com'),('Seth','Martin','1019 Pennsylvania Blvd',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Marysville'),'98270','Washington','SMartin@yahoo.com'),('Larry','Suarez','102 Vista Place',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Milton Keynes'),'MK8 8DF','England','LSuarez@yahoo.com'),('Garrett','Vargas','10203 Acorn Avenue',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Calgary'),'T2P 2G8','Alberta','GVargas@yahoo.com'),('Abby','Martinez','1023 Hawkins Street',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Townsville'),'4810','Queensland','AMartinez@yahoo.com'),('Justin','Thomas','1023 Riveria Way',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burbank'),'91502','California','JThomas@yahoo.com'),('Evelyn','Martinez','1023 Riviera Way',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Oxford'),'OX1','England','EMartinez@yahoo.com'),('Pamela','Chapman','1025 Yosemite Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Townsville'),'4810','Queensland','PChapman@yahoo.com'),('Kayla','Griffin','1026 Mt. Wilson Pl.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lynnwood'),'98036','Washington','KGriffin@yahoo.com'),('Jill','Navarro','1026 Mt. Wilson Pl.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'South Melbourne'),'3205','Victoria','JNavarro@yahoo.com'),('Nathan','Walker','1028 Indigo Ct.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Issaquah'),'98027','Washington','NWalker@yahoo.com'),('Tabitha','Moreno','1028 Indigo Ct.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Warrnambool'),'3280','Victoria','TMoreno@yahoo.com'),('Mason','Sanchez','1028 Royal Oak Rd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burlingame'),'94010','California','MSanchez@yahoo.com'),('Natasha','Navarro','1029 Birchwood Dr',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Burien'),'98168','Washington','NNavarro@yahoo.com'),('Kevin','Russell','1029 Birchwood Dr',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Olympia'),'98501','Washington','KRussell@yahoo.com'),('Katelyn','Rivera','1030 Ambush Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Bury'),'PE17','England','KRivera@yahoo.com'),('Alfredo','Ortega','1032 Buena Vista',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'North Ryde'),'2113','New South Wales','AOrtega@yahoo.com'),('Andrea','Campbell','1032 Coats Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Stoke-on-Trent'),'AS23','England','ACampbell@yahoo.com'),('Jeremy','Peterson','1035 Arguello Blvd.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'San Diego'),'92102','California','JPeterson@yahoo.com'),('Arianna','Ramirez','1036 Mason Dr',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Port Orchard'),'98366','Washington','ARamirez@yahoo.com'),('Mario','Sharma','1039 Adelaide St.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Port Macquarie'),'2444','New South Wales','MSharma@yahoo.com'),('Adam','Collins','104 Hilltop Dr.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Concord'),'94519','California','ACollins@yahoo.com'),('Taylor','Martin','1040 Greenbush Drive',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Newton'),'V2L3W8','British Columbia','TMartin@yahoo.com'),('Gabriel','Collins','1040 Northridge Road',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Woodland Hills'),'91364','California','GCollins@yahoo.com'),('Randall','Martin','1042 Hooftrail Way',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Newcastle'),'2300','New South Wales','RMartin@yahoo.com'),('Samantha','Jenkins','1046 Cloverleaf Circle',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Shawnee'),'V8Z 4N5','British Columbia','SJenkins@yahoo.com'),('Justin','Simmons','1046 San Carlos Avenue',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Colma'),'94014','California','JSimmons@yahoo.com'),('Ethan','Winston','1047 Las Quebradas Lane',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Oak Bay'),'V8P','British Columbia','EWinston@yahoo.com'),('Hunter','Roberts','1048 Burwood Way',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Haney'),'V2W 1W2','British Columbia','HRoberts@yahoo.com'),('Nathaniel','Murphy','105 Woodruff Ln.',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Oakland'),'94611','California','NMurphy@yahoo.com'),('Charles','Wilson','1050 Creed Ave',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lebanon'),'97355','Oregon','CWilson@yahoo.com'),('Carrie','Alvarez','1050 Greenhills Circle',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Lane Cove'),'1597','New South Wales','CAlvarez@yahoo.com'),('Paige','Alexander','1050 Greenhills Circle',(SELECT Cities_Country_Code FROM Cities WHERE Cities.City_Name = 'Langley'),'V3A 4R2','British Columbia','PAlexander@yahoo.com');
INSERT INTO Difficulty(Difficulty_ID,Difficulty) VALUES (0,'Non-Technical'),(1,'Beginner'),(2,'Intermediate'),(3,'Advanced');
INSERT INTO ROLE(Role_ID,Role) VALUES (1,'Presenter'),(2,'Attendee'),(3,'Organizer'),(4,'Volunteer'),(5,'Sponsor')

DROP PROCEDURE [insertPresentation2]
GO
USE [s17guest37]
GO
CREATE PROCEDURE [insertPresentation2]
 @Name Varchar(100),
 @Class_Title Varchar(2000),
 @Difficulty Varchar(20),
 @Event_City Varchar(100)
AS
BEGIN
	DECLARE @Counter varchar(101);
	SET @Counter = CAST(RAND() AS varchar(100));
	IF NOT EXISTS(SELECT Event.Event_Title FROM Event WHERE (Cities_Country_Code = (SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = @Event_City)))
		BEGIN
			INSERT INTO Event (Event_Title, Cities_Country_Code) VALUES ('UNKNOWN EVENT-' + @Counter,(SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = @Event_City))
		END
	ELSE
		BEGIN
		INSERT INTO Attendees(First_Name, Last_Name) VALUES (SUBSTRING(@Name, 0, CHARINDEX(' ', @Name)),SUBSTRING(@Name, CHARINDEX(' ', @Name)+1, LEN(@Name)))
		INSERT INTO [Attendee Roles](User_ID,Role_ID) VALUES (IDENT_CURRENT('Attendees'),1)
		INSERT INTO Presentation(User_ID,Class_Title) VALUES (IDENT_CURRENT('Attendees'),@Class_Title)
		INSERT INTO [Presentation Difficulty](Difficulty_ID,Class_ID) VALUES ((SELECT Difficulty.Difficulty_ID FROM Difficulty WHERE Difficulty = @Difficulty),IDENT_CURRENT('Presentation'))
		INSERT INTO [Event Classes](Event_Title, Class_ID) 
			VALUES ((SELECT Event.Event_Title FROM Event WHERE (Cities_Country_Code = (SELECT Cities.Cities_Country_Code FROM Cities WHERE City_Name = @Event_City))), IDENT_CURRENT('Presentation'))	
		END
END
go

EXEC [insertPresentation2] 'Steve Simon','A dive into Data Quality Services','Intermediate','New York';
EXEC [insertPresentation2] 'Jeremiah Peschka','A Dynamic World Demands Dynamic SQL','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Jeremiah Peschka','A Dynamic World Demands Dynamic SQL','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Kevin Goff','Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)','Beginner','Budapest';
EXEC [insertPresentation2] 'Chris Seferlis','AlwaysOn: Improve reliability and reporting performance with one cool tech','Beginner','New York';
EXEC [insertPresentation2] 'Steve Simon','An introduction to Data Mining','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Mohammad Yusuf','An Introduction to Database Design','Beginner','New York';
EXEC [insertPresentation2] 'Kennie Pontoppidan','Autogenerating a process data warehouse','Advanced','New York';
EXEC [insertPresentation2] 'John Sterrett','Automate your daily checklist with PBM and CMS','Intermediate','Budapest';
EXEC [insertPresentation2] 'Thomas Grohser','Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Intermediate','New York';
EXEC [insertPresentation2] 'Thomas Grohser','Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Intermediate','Kiev';
EXEC [insertPresentation2] 'Joe Chang','Automating Execution Plan Analysis','Advanced','Kiev';
EXEC [insertPresentation2] 'Joe Chang','Automating Execution Plan Analysis','Advanced','New York';
EXEC [insertPresentation2] 'Michael Wharton','Automating SQL Server using PowerShell','Intermediate','New York';
EXEC [insertPresentation2] 'Sunil Kadimdiwan','Balanced Scorecards using SSRS','Intermediate','Budapest';
EXEC [insertPresentation2] 'Mike Walsh','Baselines and Performance Monitoring with PAL','Beginner','New York';
EXEC [insertPresentation2] 'John Miner','Basic Database Design','Beginner','New York';
EXEC [insertPresentation2] 'John Miner','Basic Database Programming','Beginner','Kiev';
EXEC [insertPresentation2] 'James Serra','Become a BI Independent Consultant!','Beginner','Budapest';
EXEC [insertPresentation2] 'Joseph D''Antoni','Becoming a Top DBA--Learning Automation in SQL Server','Beginner','Kiev';
EXEC [insertPresentation2] 'Paresh Motiwala','Best Practices Document','Intermediate','Kiev';
EXEC [insertPresentation2] 'Mickey Stuewe','Best Practices for Efficient SSRS Report Creation','Beginner','New York';
EXEC [insertPresentation2] 'John Miner','Biggest Loser: Database Edition','Intermediate','New York';
EXEC [insertPresentation2] 'Stacia Misner','Building a BI Solution in the Cloud','Intermediate','Budapest';
EXEC [insertPresentation2] 'James Serra','Building an Effective Data Warehouse Architecture','Beginner','New York';
EXEC [insertPresentation2] 'James Serra','Building an Effective Data Warehouse Architecture with the cloud and MPP','Beginner','New York';
EXEC [insertPresentation2] 'David Peter Hansen','Bulk load and minimal logged inserts','Advanced','New York';
EXEC [insertPresentation2] 'Steve Simon','Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask','Intermediate','New York';
EXEC [insertPresentation2] 'Steve Simon','Challenges to designing financial warehouses, lessons learnt','Intermediate','New York';
EXEC [insertPresentation2] 'Kevin Goff','Change Data Capture in SQL Server 2008/2012','Intermediate','New York';
EXEC [insertPresentation2] 'Mickey Stuewe','Changing Your Habits to Improve the Performance of Your T-SQL','Beginner','Kiev';
EXEC [insertPresentation2] 'Allan Hirt and SIOS Technology','Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments','Beginner','Kiev';
EXEC [insertPresentation2] 'Allan Hirt','Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments','Non-Technical','Kiev';
EXEC [insertPresentation2] 'SQLSatruday 364','Coffee Break','Non-Technical','Budapest';
EXEC [insertPresentation2] 'Robert Pearl','Creating A Performance Health Repository - using MDW','Beginner','Kiev';
EXEC [insertPresentation2] 'Steve Simon','Creating efficient and effective SSRS BI Solutions','Intermediate','Kiev';
EXEC [insertPresentation2] 'Steve Simon','Creating efficient and effective SSRS BI Solutions','Intermediate','New York';
EXEC [insertPresentation2] 'John Flannery','Data Partitioning','Intermediate','New York';
EXEC [insertPresentation2] 'John Flannery','Data Tier Application Testing with NUnit and Distributed Replay','Intermediate','New York';
EXEC [insertPresentation2] 'Steve Simon','Database design for mere developers','Intermediate','Budapest';
EXEC [insertPresentation2] 'Steve Simon','Database design for mere developers','Intermediate','New York';
EXEC [insertPresentation2] 'Edward Pollack','Database Design: Solving Problems Before they Start!','Beginner','New York';
EXEC [insertPresentation2] 'Mohammad Yusuf','Database Modeling and Design','Intermediate','New York';
EXEC [insertPresentation2] 'Michael Corey','Database Virtualization and Drinking out of the Fire Hose','Intermediate','New York';
EXEC [insertPresentation2] 'Steve Simon','DAX and the tabular model','Intermediate','Kiev';
EXEC [insertPresentation2] 'Robert Pearl','DBA FOR DUMMIES','Beginner','Budapest';
EXEC [insertPresentation2] 'Gigi Bell','Dealing With Difficult People','Beginner','Kiev';
EXEC [insertPresentation2] 'John Flannery','Development Lifecycle with SQL Server Data Tools and DACFx','Intermediate','Kiev';
EXEC [insertPresentation2] 'Allan Hirt','Did You Vote Today? A DBAs Guide to Cluster Quorum','Advanced','Kiev';
EXEC [insertPresentation2] 'Jason Horner','Dimensional Modeling Design Patterns: Beyond Basics','Intermediate','Kiev';
EXEC [insertPresentation2] 'Jason Horner','Dimensional Modeling Design Patterns: Beyond Basics','Intermediate','Budapest';
EXEC [insertPresentation2] 'Edward Pollack','Diving Into Query Execution Plans','Intermediate','New York';
EXEC [insertPresentation2] 'Edward Pollack','Dynamic SQL: Writing Efficient Queries on the Fly','Beginner','Kiev';
EXEC [insertPresentation2] 'Brent Ozar','Easy Architecture Design for HA and DR','Intermediate','New York';
EXEC [insertPresentation2] 'James Serra','Enhancing your career: Building your personal brand','Beginner','New York';
EXEC [insertPresentation2] 'Thomas Grohser','Establishing a SLA','Intermediate','New York';
EXEC [insertPresentation2] 'Paul Rizza','ETL not ELT! Common mistakes and misconceptions about SSIS','Advanced','Budapest';
EXEC [insertPresentation2] 'SQLSaturday 364','Event Kickoff and Networking','Non-Technical','New York';
EXEC [insertPresentation2] 'Grant Fritchey','Execution Plans: What Can You Do With Them?','Intermediate','New York';
EXEC [insertPresentation2] 'Sayed Saeed','Faster, Better Decisions with Self Service Business Analytics','Intermediate','New York';
EXEC [insertPresentation2] 'John Miner','Full Text Indexing Basics','Beginner','Budapest';
EXEC [insertPresentation2] 'Steve Simon','Get your Mining Model Predictions out to all','Intermediate','New York';
EXEC [insertPresentation2] 'Paul Rizza','Getting a job with Microsoft','Non-Technical','New York';
EXEC [insertPresentation2] 'Stéphane Fréchette','Graph Databases for SQL Server Professionals','Intermediate','New York';
EXEC [insertPresentation2] 'Chris Bell','Hacking Exposé - Using SSL to Protect SQL Connections','Intermediate','New York';
EXEC [insertPresentation2] 'Andy Leonard','Hacking the SSIS 2012 Catalog','Beginner','Budapest';
EXEC [insertPresentation2] 'Varsham Papikian','Hidden in plain sight: master your tools','Intermediate','New York';
EXEC [insertPresentation2] 'David Bermingham','Highly Available SQL Server in Windows Azure IaaS','Intermediate','New York';
EXEC [insertPresentation2] 'James Serra','How to Make a LOT More Money as a Consultant','Beginner','New York';
EXEC [insertPresentation2] 'Brent Ozar','How to Think Like the Engine','Intermediate','New York';
EXEC [insertPresentation2] 'George Walters','Hybrid Cloud Scenarios with SQL Server 2014','Intermediate','Budapest';
EXEC [insertPresentation2] 'Allan Hirt','Hybrid Solutions: The Future of SQL Server Disaster Recovery','Intermediate','Budapest';
EXEC [insertPresentation2] 'Kevin Goff','Implementing Data Warehouse Patterns with the Microsoft BI Tools','Intermediate','Budapest';
EXEC [insertPresentation2] 'Jack Corbett','Inroduction to Triggers','Beginner','Budapest';
EXEC [insertPresentation2] 'Kevin Goff','Integrating Reporting Services with SharePoint','Intermediate','New York';
EXEC [insertPresentation2] 'David Peter Hansen','Integration Services (SSIS) for the DBA','Intermediate','New York';
EXEC [insertPresentation2] 'Stacia Misner','Introducing Power BI','Beginner','New York';
EXEC [insertPresentation2] 'John Flannery','Introduction to Database Recovery','Beginner','New York';
EXEC [insertPresentation2] 'John Sterrett','Introduction to High Availability with SQL Server','Beginner','New York';
EXEC [insertPresentation2] 'John Sterrett','Introduction to Powershell for DBA''s','Beginner','New York';
EXEC [insertPresentation2] 'Brandon Leach','Introduction to SQL Server - Part 1','Beginner','New York';
EXEC [insertPresentation2] 'Brandon Leach','Introduction to SQL Server - Part 2','Beginner','New York';
EXEC [insertPresentation2] 'Allan Hirt','Is That A Failover Cluster On Your Laptop/Desktop?','Intermediate','New York';
EXEC [insertPresentation2] 'Jeremiah Peschka','Leaving the Windows Open','Intermediate','New York';
EXEC [insertPresentation2] 'SQLSaturday 364','Lunch Break','Non-Technical','New York';
EXEC [insertPresentation2] 'SQLSaturday 364','Lunchtime Keynote','Non-Technical','New York';
EXEC [insertPresentation2] 'Steve Simon','Master Data Services Best Practices','Intermediate','New York';
EXEC [insertPresentation2] 'Steve Simon','Master Data Services Disaster Recovery','Intermediate','New York';
EXEC [insertPresentation2] 'Steve Simon','Mind your language!! Cursors are a dirty word','Intermediate','New York';
EXEC [insertPresentation2] 'James Serra','Modern Data Warehousing','Beginner','New York';
EXEC [insertPresentation2] 'Steve Simon','Monitoring Server health via Reporting Services dashboards','Intermediate','New York';
EXEC [insertPresentation2] 'Hilary Cotter','Monitoring SQL Server using Extended Events','Beginner','New York';
EXEC [insertPresentation2] 'Stacia Misner','Multidimensional vs Tabular - May the Best Model Win','Intermediate','New York';
EXEC [insertPresentation2] 'Jason Brimhall','Murder They Wrote','Intermediate','New York';
EXEC [insertPresentation2] 'Mike Walsh','Never Have to Say "Mayday!!!" Again','Beginner','New York';
EXEC [insertPresentation2] 'Steve Simon','Now you see it! Now you don''t! Conjuring many reports utilizing only one SSRS report.','Intermediate','New York';
EXEC [insertPresentation2] 'Kevin Schenega','Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server','Non-Technical','Budapest';
EXEC [insertPresentation2] 'Chris Bell','Optimizing Protected Indexes','Intermediate','Budapest';
EXEC [insertPresentation2] 'Kennie Pontoppidan','Partitioning as a design pattern','Advanced','Budapest';
EXEC [insertPresentation2] 'Todd Chittenden','Power BI Components in Microsoft''s Self-Service BI Suite','Beginner','New York';
EXEC [insertPresentation2] 'Steve Simon','Power to the people!!','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Michael Wharton','PowerShell Basics for SQLServer','Beginner','Kiyv';
EXEC [insertPresentation2] 'Jason Horner','PowerShell for the Reluctant DBA / Developer','Beginner','Kiyv';
EXEC [insertPresentation2] 'Chris Bell','Prevent Recovery Amnesia – Forget the Backups','Beginner','Kiyv';
EXEC [insertPresentation2] 'Edward Pollack','Query Optimization Crash Course','Beginner','Kiyv';
EXEC [insertPresentation2] 'SQLSaturday 364','Raffle','Non-Technical','';
EXEC [insertPresentation2] 'Steve Simon','Rapid Application Development with Master Data Services','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Mike Hillwig','Recovery and Backup for Beginners','Beginner','Kiyv';
EXEC [insertPresentation2] 'Stacia Misner','Reduce, Reuse, Recycle: Automating Your BI Framework','Intermediate','Kiyv';
EXEC [insertPresentation2] 'SQLSaturday 364','Registrations','Non-Technical','';
EXEC [insertPresentation2] 'Hilary Cotter','Replicaton Technologies','Advanced','Kiyv';
EXEC [insertPresentation2] 'Jason Brimhall','Reporting Services for Mere DBAs','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Hilary Cotter','Scaling with SQL Server Service Broker','Advanced','Kiyv';
EXEC [insertPresentation2] 'Hilary Cotter','Scaling with SQL Server Service Broker','Advanced','Kiyv';
EXEC [insertPresentation2] 'Stéphane Fréchette','Self-Service Data Integration with Power Query','Beginner','Kiyv';
EXEC [insertPresentation2] 'Paul Rizza','Shortcuts to Building SSIS in .Net','Beginner','Kiyv';
EXEC [insertPresentation2] 'Allan Hirt','So You Want To Be A Consultant?','Beginner','Kiyv';
EXEC [insertPresentation2] 'Kennie Pontoppidan','SQL anti patterns','Advanced','Kiyv';
EXEC [insertPresentation2] 'Kevin Goff','SQL Server 2012/2014 Columnstore index','Intermediate','Kiyv';
EXEC [insertPresentation2] 'George Walters','SQL Server 2012/2014 Performance Tuning All Up','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Steve Simon','SQL Server 2014 Data Access Layers','Intermediate','Kiyv';
EXEC [insertPresentation2] 'George Walters','SQL Server 2014 New Features','Intermediate','Kiyv';
EXEC [insertPresentation2] 'George Walters','SQL Server AlwaysOn Availability Groups','Beginner','Kiyv';
EXEC [insertPresentation2] 'David Peter Hansen','SQL Server and the Cloud','Beginner','Kiyv';
EXEC [insertPresentation2] 'Jason Brimhall','SQL Server Compression and what it can do for you','Advanced','Kiyv';
EXEC [insertPresentation2] 'Steve Simon','SQL Server Reporting Services 2014 on Steroids!!','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Steve Simon','SQL Server Reporting Services Best Practices','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Kevin Goff','SQL Server Reporting Services, attendees choose','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Thomas Grohser','SQL Server Storage Engine under the hood','Intermediate','Kiyv';
EXEC [insertPresentation2] 'Brandon Leach','SQL Server Storage internals: Looking under the hood.','Advanced','Kiyv';
EXEC [insertPresentation2] 'Andy Leonard','SSIS 2014 Data Flow Tuning Tips and Tricks','Beginner','Kiyv';
EXEC [insertPresentation2] 'Carl Berglund','Standalone to High-Availability Clusters over Lunch—with Time to Spare','Intermediate','Budapest';
EXEC [insertPresentation2] 'Hilary Cotter','Stress testing SQL Server','Advanced','Kiyv';
EXEC [insertPresentation2] 'John Miner','Table partitioning for Azure SQL Databases','Beginner','Kiyv';
EXEC [insertPresentation2] 'Melissa Riley','Testing','Beginner','Kiyv';
EXEC [insertPresentation2] 'Adam Jorgensen','The future of the data professional','Beginner','Kiyv';
EXEC [insertPresentation2] 'Dennis Messina','The Quest for the Golden Record:MDM Best Practices','Beginner','Budapest';
EXEC [insertPresentation2] 'Richie Rump','The Quest to Find Bad Data With Data Profiling','Intermediate','Budapest';
EXEC [insertPresentation2] 'Chris Bell','The Spy Who Loathed Me - An Intro to SQL Security','Beginner','Budapest';
EXEC [insertPresentation2] 'Jack Corbett','Tired of the CRUD? Automate it!','Intermediate','Budapest';
EXEC [insertPresentation2] 'Aaron Bertrand','Top 5 Ways to Improve Your triggers','Intermediate','Budapest';
EXEC [insertPresentation2] 'Greg Moore','Tricks that have saved my bacon','Beginner','Budapest';
EXEC [insertPresentation2] 'Aaron Bertrand','T-SQL : Bad Habits & Best Practices','Beginner','Budapest';
EXEC [insertPresentation2] 'Kevin Goff','T-SQL for Application Developers - Attendees chose','Intermediate','Budapest';
EXEC [insertPresentation2] 'Grant Fritchey','Tune Queries By Fixing Bad Parameter Sniffing','Intermediate','Budapest';
EXEC [insertPresentation2] 'Jason Brimhall','Using Extended Events in SQL Server','Advanced','Budapest';
EXEC [insertPresentation2] 'Brent Ozar','Watch Brent Tune Queries','Intermediate','Budapest';
EXEC [insertPresentation2] 'David Bermingham','What every SQL Server DBA needs to know about Windows Server 10 Technical Preview','Intermediate','Budapest';
EXEC [insertPresentation2] 'James Serra','What exactly is big data and why should I care?','Beginner','Budapest';
EXEC [insertPresentation2] 'James Serra','What is it like to work for Microsoft?','Beginner','Budapest';
EXEC [insertPresentation2] 'Kevin Goff','What’s new in SQL Server Integration Services 2012','Intermediate','Budapest';
EXEC [insertPresentation2] 'Paresh Motiwala','Why do we shun using tools for DBA job?','Intermediate','Budapest';
EXEC [insertPresentation2] 'Kevin Goff','Why OLAP? Building SSAS cubes and benefits of OLAP','Intermediate','Budapest';
EXEC [insertPresentation2] 'Mike Walsh','You''re Doing It Wrong!!','Intermediate','Budapest';
drop PROCEDURE [insertPresentation2]
GO