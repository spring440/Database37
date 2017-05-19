-- Drop relationships section -------------------------------------------------

ALTER TABLE [Attendees] DROP CONSTRAINT [Relationship116]
go
ALTER TABLE [Event] DROP CONSTRAINT [Relationship115]
go
ALTER TABLE [Event] DROP CONSTRAINT [Relationship114]
go
ALTER TABLE [Event] DROP CONSTRAINT [Relationship113]
go
ALTER TABLE [Presentation] DROP CONSTRAINT [Relationship112]
go
ALTER TABLE [Event Tracks] DROP CONSTRAINT [Relationship108]
go
ALTER TABLE [Event Tracks] DROP CONSTRAINT [Relationship107]
go
ALTER TABLE [Event Sponsors] DROP CONSTRAINT [Relationship106]
go
ALTER TABLE [Event Sponsors] DROP CONSTRAINT [Relationship105]
go
ALTER TABLE [Presentation Difficulty] DROP CONSTRAINT [Relationship104]
go
ALTER TABLE [Presentation Difficulty] DROP CONSTRAINT [Relationship103]
go
ALTER TABLE [Track Presentations] DROP CONSTRAINT [Relationship102]
go
ALTER TABLE [Track Presentations] DROP CONSTRAINT [Relationship101]
go
ALTER TABLE [Class Enrollment] DROP CONSTRAINT [Relationship99]
go
ALTER TABLE [Class Enrollment] DROP CONSTRAINT [Relationship98]
go
ALTER TABLE [Sponsor Level] DROP CONSTRAINT [Relationship97]
go
ALTER TABLE [Sponsor Level] DROP CONSTRAINT [Relationship96]
go
ALTER TABLE [Attendee Roles] DROP CONSTRAINT [Relationship93]
go
ALTER TABLE [Attendee Roles] DROP CONSTRAINT [Relationship92]
go
ALTER TABLE [Event Attendees] DROP CONSTRAINT [Relationship91]
go
ALTER TABLE [Event Attendees] DROP CONSTRAINT [Relationship90]
go
ALTER TABLE [Presentation] DROP CONSTRAINT [Relationship81]
go
ALTER TABLE [Event Classes] DROP CONSTRAINT [Relationship73]
go
ALTER TABLE [Event Classes] DROP CONSTRAINT [Relationship72]
go
ALTER TABLE [Venue] DROP CONSTRAINT [Relationship51]
go
ALTER TABLE [Event] DROP CONSTRAINT [Relationship50]
go




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE [States] DROP CONSTRAINT [Key30]
go
ALTER TABLE [Countries] DROP CONSTRAINT [Key29]
go
ALTER TABLE [Cities] DROP CONSTRAINT [Key28]
go
ALTER TABLE [Event Tracks] DROP CONSTRAINT [Key27]
go
ALTER TABLE [Event Sponsors] DROP CONSTRAINT [Key26]
go
ALTER TABLE [Presentation Difficulty] DROP CONSTRAINT [Key25]
go
ALTER TABLE [Track Presentations] DROP CONSTRAINT [Key24]
go
ALTER TABLE [Class Enrollment] DROP CONSTRAINT [Key23]
go
ALTER TABLE [Sponsor Level] DROP CONSTRAINT [Key22]
go
ALTER TABLE [Attendee Roles] DROP CONSTRAINT [Key20]
go
ALTER TABLE [Event Attendees] DROP CONSTRAINT [Key19]
go
ALTER TABLE [Event Classes] DROP CONSTRAINT [Key17]
go
ALTER TABLE [Level] DROP CONSTRAINT [Key14]
go
ALTER TABLE [Sponsors] DROP CONSTRAINT [Key13]
go
ALTER TABLE [Role] DROP CONSTRAINT [Key12]
go
ALTER TABLE [Attendees] DROP CONSTRAINT [Key11]
go
ALTER TABLE [Presentation] DROP CONSTRAINT [Key10]
go
ALTER TABLE [Track] DROP CONSTRAINT [Key6]
go
ALTER TABLE [Difficulty] DROP CONSTRAINT [Key5]
go
ALTER TABLE [Room] DROP CONSTRAINT [Key3]
go
ALTER TABLE [Venue] DROP CONSTRAINT [Key2]
go
ALTER TABLE [Event] DROP CONSTRAINT [Key1]
go


-- Drop indexes section -------------------------------------------------

DROP INDEX [IX_Relationship116] ON [Attendees]
go
DROP INDEX [IX_Relationship81] ON [Presentation]
go
DROP INDEX [IX_Relationship112] ON [Presentation]
go
DROP INDEX [IX_Relationship51] ON [Venue]
go
DROP INDEX [IX_Relationship50] ON [Event]
go
DROP INDEX [IX_Relationship113] ON [Event]
go
DROP INDEX [IX_Relationship114] ON [Event]
go
DROP INDEX [IX_Relationship115] ON [Event]
go


-- Drop tables section ---------------------------------------------------

DROP TABLE [States]
go
DROP TABLE [Countries]
go
DROP TABLE [Cities]
go
DROP TABLE [Event Tracks]
go
DROP TABLE [Event Sponsors]
go
DROP TABLE [Presentation Difficulty]
go
DROP TABLE [Track Presentations]
go
DROP TABLE [Class Enrollment]
go
DROP TABLE [Sponsor Level]
go
DROP TABLE [Attendee Roles]
go
DROP TABLE [Event Attendees]
go
DROP TABLE [Event Classes]
go
DROP TABLE [Level]
go
DROP TABLE [Sponsors]
go
DROP TABLE [Role]
go
DROP TABLE [Attendees]
go
DROP TABLE [Presentation]
go
DROP TABLE [Track]
go
DROP TABLE [Difficulty]
go
DROP TABLE [Room]
go
DROP TABLE [Venue]
go
DROP TABLE [Event]
go

-- Create tables section -------------------------------------------------

-- Table Event

CREATE TABLE [Event]
(
 [Event_Title] Varchar(200) NOT NULL,
 [Venue_Address] Varchar(50) NULL,
 [Date] Date NULL,
 [Audience] Char(50) NULL,
 [States_Code] Char(2) NULL,
 [Countries_ID] Smallint NULL,
 [Cities_Country_Code] Int NULL
)
go

-- Create indexes for table Event

CREATE INDEX [IX_Relationship50] ON [Event] ([Venue_Address])
go

CREATE INDEX [IX_Relationship113] ON [Event] ([States_Code])
go

CREATE INDEX [IX_Relationship114] ON [Event] ([Countries_ID])
go

CREATE INDEX [IX_Relationship115] ON [Event] ([Cities_Country_Code])
go

-- Add keys for table Event

ALTER TABLE [Event] ADD CONSTRAINT [Key1] PRIMARY KEY ([Event_Title])
go

-- Table Venue

CREATE TABLE [Venue]
(
 [Venue_Address] Varchar(50) NOT NULL,
 [Room_ID] Smallint NULL
)
go

-- Create indexes for table Venue

CREATE INDEX [IX_Relationship51] ON [Venue] ([Room_ID])
go

-- Add keys for table Venue

ALTER TABLE [Venue] ADD CONSTRAINT [Key2] PRIMARY KEY ([Venue_Address])
go

-- Table Room

CREATE TABLE [Room]
(
 [Room_ID] Smallint IDENTITY NOT NULL,
 [Room_Name] Varchar(50) NULL,
 [Room_Number] Smallint NULL,
 [Room_Capacity] Smallint NULL
)
go

-- Add keys for table Room

ALTER TABLE [Room] ADD CONSTRAINT [Key3] PRIMARY KEY ([Room_ID])
go

-- Table Difficulty

CREATE TABLE [Difficulty]
(
 [Difficulty_ID] Tinyint NOT NULL,
 [Difficulty] Varchar(20) NULL
)
go

-- Add keys for table Difficulty

ALTER TABLE [Difficulty] ADD CONSTRAINT [Key5] PRIMARY KEY ([Difficulty_ID])
go

-- Table Track

CREATE TABLE [Track]
(
 [Track_ID] Int IDENTITY NOT NULL,
 [Track_Title] Varchar(50) NULL,
 [Specific_Area] Varchar(50) NULL
)
go

-- Add keys for table Track

ALTER TABLE [Track] ADD CONSTRAINT [Key6] PRIMARY KEY ([Track_ID])
go

-- Table Presentation

CREATE TABLE [Presentation]
(
 [Class_ID] Smallint IDENTITY NOT NULL,
 [Room_ID] Smallint NULL,
 [User_ID] Int NULL,
 [Class_Title] Varchar(2000) NULL,
 [Start_Time] Time(0) NULL,
 [End_Time] Time(0) NULL,
 [Description] Varchar(max) NULL
)
go

-- Create indexes for table Presentation

CREATE INDEX [IX_Relationship81] ON [Presentation] ([Room_ID])
go

CREATE INDEX [IX_Relationship112] ON [Presentation] ([User_ID])
go

-- Add keys for table Presentation

ALTER TABLE [Presentation] ADD CONSTRAINT [Key10] PRIMARY KEY ([Class_ID])
go

-- Table Attendees

CREATE TABLE [Attendees]
(
 [User_ID] Int IDENTITY NOT NULL,
 [First_Name] Varchar(50) NULL,
 [Last_Name] Varchar(50) NULL,
 [Address] Varchar(150) NULL,
 [Zip] Varchar(10) NULL,
 [Email] Varchar(100) NULL,
 [Cities_Country_Code] Int NULL,
 [StateOrCountry] Varchar(50) NULL
)
go

-- Create indexes for table Attendees

CREATE INDEX [IX_Relationship116] ON [Attendees] ([Cities_Country_Code])
go

-- Add keys for table Attendees

ALTER TABLE [Attendees] ADD CONSTRAINT [Key11] PRIMARY KEY ([User_ID])
go

-- Table Role

CREATE TABLE [Role]
(
 [Role_ID] Tinyint NOT NULL,
 [Role] Varchar(9) NULL
)
go

-- Add keys for table Role

ALTER TABLE [Role] ADD CONSTRAINT [Key12] PRIMARY KEY ([Role_ID])
go

-- Table Sponsors

CREATE TABLE [Sponsors]
(
 [Sponsor_ID] Tinyint IDENTITY(1,1) NOT NULL,
 [Sponsor_Name] Varchar(100) NULL
)
go

-- Add keys for table Sponsors

ALTER TABLE [Sponsors] ADD CONSTRAINT [Key13] PRIMARY KEY ([Sponsor_ID])
go

-- Table Level

CREATE TABLE [Level]
(
 [Sponsor_Level] Tinyint NOT NULL,
 [Sponsor_Level_Name] Varchar(16) NULL
)
go

-- Add keys for table Level

ALTER TABLE [Level] ADD CONSTRAINT [Key14] PRIMARY KEY ([Sponsor_Level])
go

-- Table Event Classes

CREATE TABLE [Event Classes]
(
 [Event_Title] Varchar(200) NOT NULL,
 [Class_ID] Smallint NOT NULL
)
go

-- Add keys for table Event Classes

ALTER TABLE [Event Classes] ADD CONSTRAINT [Key17] PRIMARY KEY ([Event_Title],[Class_ID])
go

-- Table Event Attendees

CREATE TABLE [Event Attendees]
(
 [Event_Title] Varchar(200) NOT NULL,
 [User_ID] Int NOT NULL
)
go

-- Add keys for table Event Attendees

ALTER TABLE [Event Attendees] ADD CONSTRAINT [Key19] PRIMARY KEY ([Event_Title],[User_ID])
go

-- Table Attendee Roles

CREATE TABLE [Attendee Roles]
(
 [Role_ID] Tinyint NOT NULL,
 [User_ID] Int NOT NULL
)
go

-- Add keys for table Attendee Roles

ALTER TABLE [Attendee Roles] ADD CONSTRAINT [Key20] PRIMARY KEY ([Role_ID],[User_ID])
go

-- Table Sponsor Level

CREATE TABLE [Sponsor Level]
(
 [Sponsor_Level] Tinyint NOT NULL,
 [Sponsor_ID] Tinyint NOT NULL
)
go

-- Add keys for table Sponsor Level

ALTER TABLE [Sponsor Level] ADD CONSTRAINT [Key22] PRIMARY KEY ([Sponsor_Level],[Sponsor_ID])
go

-- Table Class Enrollment

CREATE TABLE [Class Enrollment]
(
 [User_ID] Int NOT NULL,
 [Class_ID] Smallint NOT NULL
)
go

-- Add keys for table Class Enrollment

ALTER TABLE [Class Enrollment] ADD CONSTRAINT [Key23] PRIMARY KEY ([User_ID],[Class_ID])
go

-- Table Track Presentations

CREATE TABLE [Track Presentations]
(
 [Track_ID] Int NOT NULL,
 [Class_ID] Smallint NOT NULL
)
go

-- Add keys for table Track Presentations

ALTER TABLE [Track Presentations] ADD CONSTRAINT [Key24] PRIMARY KEY ([Track_ID],[Class_ID])
go

-- Table Presentation Difficulty

CREATE TABLE [Presentation Difficulty]
(
 [Difficulty_ID] Tinyint NOT NULL,
 [Class_ID] Smallint NOT NULL
)
go

-- Add keys for table Presentation Difficulty

ALTER TABLE [Presentation Difficulty] ADD CONSTRAINT [Key25] PRIMARY KEY ([Difficulty_ID],[Class_ID])
go

-- Table Event Sponsors

CREATE TABLE [Event Sponsors]
(
 [Event_Title] Varchar(200) NOT NULL,
 [Sponsor_ID] Tinyint NOT NULL
)
go

-- Add keys for table Event Sponsors

ALTER TABLE [Event Sponsors] ADD CONSTRAINT [Key26] PRIMARY KEY ([Event_Title],[Sponsor_ID])
go

-- Table Event Tracks

CREATE TABLE [Event Tracks]
(
 [Event_Title] Varchar(200) NOT NULL,
 [Track_ID] Int NOT NULL
)
go

-- Add keys for table Event Tracks

ALTER TABLE [Event Tracks] ADD CONSTRAINT [Key27] PRIMARY KEY ([Event_Title],[Track_ID])
go

-- Table Cities

CREATE TABLE [Cities]
(
 [Cities_Country_Code] Int IDENTITY NOT NULL,
 [City_Name] Varchar(100) NULL
)
go

-- Add keys for table Cities

ALTER TABLE [Cities] ADD CONSTRAINT [Key28] PRIMARY KEY ([Cities_Country_Code])
go

-- Table Countries

CREATE TABLE [Countries]
(
 [Countries_ID] Smallint IDENTITY NOT NULL,
 [Countries_Name] Varchar(50) NULL
)
go

-- Add keys for table Countries

ALTER TABLE [Countries] ADD CONSTRAINT [Key29] PRIMARY KEY ([Countries_ID])
go

-- Table States

CREATE TABLE [States]
(
 [States_Code] Char(2) NOT NULL,
 [State_Name] Varchar(20) NULL
)
go

-- Add keys for table States

ALTER TABLE [States] ADD CONSTRAINT [Key30] PRIMARY KEY ([States_Code])
go



-- Create relationships section ------------------------------------------------- 

ALTER TABLE [Event] ADD CONSTRAINT [Relationship50] FOREIGN KEY ([Venue_Address]) REFERENCES [Venue] ([Venue_Address]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Venue] ADD CONSTRAINT [Relationship51] FOREIGN KEY ([Room_ID]) REFERENCES [Room] ([Room_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Classes] ADD CONSTRAINT [Relationship72] FOREIGN KEY ([Event_Title]) REFERENCES [Event] ([Event_Title]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Classes] ADD CONSTRAINT [Relationship73] FOREIGN KEY ([Class_ID]) REFERENCES [Presentation] ([Class_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Presentation] ADD CONSTRAINT [Relationship81] FOREIGN KEY ([Room_ID]) REFERENCES [Room] ([Room_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Attendees] ADD CONSTRAINT [Relationship90] FOREIGN KEY ([Event_Title]) REFERENCES [Event] ([Event_Title]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Attendees] ADD CONSTRAINT [Relationship91] FOREIGN KEY ([User_ID]) REFERENCES [Attendees] ([User_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Attendee Roles] ADD CONSTRAINT [Relationship92] FOREIGN KEY ([Role_ID]) REFERENCES [Role] ([Role_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Attendee Roles] ADD CONSTRAINT [Relationship93] FOREIGN KEY ([User_ID]) REFERENCES [Attendees] ([User_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Sponsor Level] ADD CONSTRAINT [Relationship96] FOREIGN KEY ([Sponsor_Level]) REFERENCES [Level] ([Sponsor_Level]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Sponsor Level] ADD CONSTRAINT [Relationship97] FOREIGN KEY ([Sponsor_ID]) REFERENCES [Sponsors] ([Sponsor_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Class Enrollment] ADD CONSTRAINT [Relationship98] FOREIGN KEY ([User_ID]) REFERENCES [Attendees] ([User_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Class Enrollment] ADD CONSTRAINT [Relationship99] FOREIGN KEY ([Class_ID]) REFERENCES [Presentation] ([Class_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Track Presentations] ADD CONSTRAINT [Relationship101] FOREIGN KEY ([Track_ID]) REFERENCES [Track] ([Track_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Track Presentations] ADD CONSTRAINT [Relationship102] FOREIGN KEY ([Class_ID]) REFERENCES [Presentation] ([Class_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Presentation Difficulty] ADD CONSTRAINT [Relationship103] FOREIGN KEY ([Difficulty_ID]) REFERENCES [Difficulty] ([Difficulty_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Presentation Difficulty] ADD CONSTRAINT [Relationship104] FOREIGN KEY ([Class_ID]) REFERENCES [Presentation] ([Class_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Sponsors] ADD CONSTRAINT [Relationship105] FOREIGN KEY ([Event_Title]) REFERENCES [Event] ([Event_Title]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Sponsors] ADD CONSTRAINT [Relationship106] FOREIGN KEY ([Sponsor_ID]) REFERENCES [Sponsors] ([Sponsor_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Tracks] ADD CONSTRAINT [Relationship107] FOREIGN KEY ([Event_Title]) REFERENCES [Event] ([Event_Title]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event Tracks] ADD CONSTRAINT [Relationship108] FOREIGN KEY ([Track_ID]) REFERENCES [Track] ([Track_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Presentation] ADD CONSTRAINT [Relationship112] FOREIGN KEY ([User_ID]) REFERENCES [Attendees] ([User_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event] ADD CONSTRAINT [Relationship113] FOREIGN KEY ([States_Code]) REFERENCES [States] ([States_Code]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event] ADD CONSTRAINT [Relationship114] FOREIGN KEY ([Countries_ID]) REFERENCES [Countries] ([Countries_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Event] ADD CONSTRAINT [Relationship115] FOREIGN KEY ([Cities_Country_Code]) REFERENCES [Cities] ([Cities_Country_Code]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Attendees] ADD CONSTRAINT [Relationship116] FOREIGN KEY ([Cities_Country_Code]) REFERENCES [Cities] ([Cities_Country_Code]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


