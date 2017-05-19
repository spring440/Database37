-- Drop procedures section --------------------------------------------------- 

DROP PROCEDURE [backupDatabase]
go
DROP PROCEDURE [selectPresentationsBudapest]
go
DROP PROCEDURE [insertPresentation]
go

-- Create procedures section -------------------------------------------------

USE [s17guest37]
GO

CREATE PROCEDURE [insertPresentation]
    @Name varchar(40),
    @Class_Title Varchar(150)
AS
BEGIN
    INSERT INTO Attendees (First_Name, Last_Name) VALUES (SUBSTRING(@Name, 0, CHARINDEX(' ', @Name)),SUBSTRING(@Name, CHARINDEX(' ', @Name), LEN(@Name)));
    INSERT INTO Presentation (User_ID, Class_Title) VALUES (IDENT_CURRENT('Attendees'),@Class_Title);
    SELECT Presentation.Class_Title AS 'Class Title', (Attendees.First_Name + ' ' + Attendees.Last_Name) AS Name FROM Presentation INNER JOIN Attendees ON Presentation.User_ID = Attendees.User_ID;
END
go

USE [s17guest37]
GO

CREATE PROCEDURE [selectPresentationsBudapest]
AS
BEGIN    

SELECT Presentation.Class_Title, [Track Presentations].Track_ID, [Event Tracks].Event_Title, Cities.City_Name
        FROM ((((Presentation
        INNER JOIN [Track Presentations] ON Presentation.Class_ID = [Track Presentations].Class_ID)
        INNER JOIN [Event Tracks] ON [Track Presentations].Track_ID = [Event Tracks].Track_ID)
        INNER JOIN Event ON [Event Tracks].Event_Title = Event.Event_Title)
		INNER JOIN Cities ON Cities.Cities_Country_Code = Event.Cities_Country_Code) WHERE City_Name = 'Budapest';
END
go

USE [s17guest37]
GO

CREATE PROCEDURE [backupDatabase]
AS
BEGIN
    BACKUP DATABASE s17guest37
    TO DISK = 'C:\s17guest37.BAK'
    WITH FORMAT,
        MEDIANAME = 's17guest37_Backup',
        NAME = 'Backup s17guest37';
END
go





