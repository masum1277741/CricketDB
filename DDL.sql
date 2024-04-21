												--Create Database
Create Database CricketDB
On Primary
(Name = 'CricketDB_Data_1', FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CricketDB_Data_1.mdf', Size = 25mb, Maxsize = 50mb, Filegrowth = 5%)
Log on
(Name = 'CricketDB_Log_1', FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CricketDB_Log_1.ldf', Size = 2mb, Maxsize = 25mb, Filegrowth = 1%)
Go


--Use This Database
Use CricketDB
Go

												--Create Table


--Teams Table
CREATE TABLE Teams 
(
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

--Players Table
CREATE TABLE Players 
(
    PlayerID INT PRIMARY KEY,
	TeamID int references Teams(TeamID),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age int,
    Country VARCHAR(50),
	[Role] varchar(50)
);

--Matches Table
CREATE TABLE Matches 
(
    MatchID INT PRIMARY KEY,
	MatchType varchar(50),
	Team1 int references Teams(TeamID),
	Team2 int references Teams(TeamID),
    MatchDate DATE,
	WinnerTeamID int references Teams(TeamID),
	LostTeamID int references Teams(TeamID),
    Venue VARCHAR(100)
);

--Innings_Summary Table
CREATE TABLE Innings_Summary 
(
    InningsID Int Primary Key,
    MatchID Int references Matches(MatchID),
    TeamID Int references Teams(TeamID),
    InningsNumber Int,
    TotalRuns Int,
    WicketsLost Int,
	[Player OF the MatchID] int references Players(PlayerID)
);

--Winning_Team_Bowler_Innings Table
CREATE TABLE Winning_Team_Bowler_Innings
(
    BowlerInningsID INT PRIMARY KEY,
    InningsID INT references Innings_Summary(InningsID),
    PlayerID INT references Players(PlayerID),
    OversBowled DECIMAL(4,2),
    RunsConceded INT ,
    WicketsTaken INT 
);

--Winning_Team_Batting_Innings Table
CREATE TABLE Winning_Team_Batting_Innings
(
    BattingInningsID INT PRIMARY KEY,
    InningsID Int References Innings_Summary(InningsID),
    PlayerID Int References Players(PlayerID),
    RunsScored INT NOT NULL,
    BallsFaced INT NOT NULL,
    Fours INT NOT NULL,
    Sixes INT NOT NULL
);
										--------Merge Table--------
CREATE TABLE Teams 
(
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Teams_Merge 
(
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL
);
									-------Clustered Index table-------
Create Table ClusteredIndexTable
(
PlayerID int references Players(PlayerID),
TeamID int references Teams(TeamID),
)									
										-----Index-----
	-----Create Clustered Index-----
Create Clustered Index PlayerID
on ClusteredIndexTable(PlayerID);

---Show Index In Query
Exec sp_helpindex ClusteredIndexTable
	
	-----Create Non-Clustered Index-----

Create NonClustered Index PlayerAge
on Players(Age);

---Show Index In Query
Exec sp_helpindex Players

									-----Alter Table-----
---Add a Column
Alter Table Players
Add CaptainName Varchar(30)

---Drop column
Alter Table Players
Drop Column CaptainName

									-----Drop Table-----
Drop Table Teams
Drop Table Players
Drop Table Matches
Drop Table Innings_Summary
Drop Table Winning_Team_Bowler_Innings
Drop Table Winning_Team_Batting_Innings

									-----Create View-----
go
Create View Vw_Teams
As
Select TeamID, TeamName, Country From Teams
Where TeamID>1
go

							----Create View with Only Encryption----
go
Create view vw_TeamsEncry
With Encryption
as
Select TeamID, TeamName, Country From Teams
go
							----Create View with Only Schemabinding----
go
Create view vw_schTeams
With Schemabinding 
as
select TeamID, TeamName, Country From dbo.Teams
go

				----Create View with Encryption and Schemabinding Together----
go
Create view vw_encry_sche_Teams 
With Encryption,Schemabinding 
as
select TeamName from dbo.Teams
Go
							---Show View---
select * from Vw_Teams
select * from vw_TeamsEncry
select * from vw_schTeams
select * from vw_encry_sche_Teams 
-----Stored procedure-----
go
create proc sp_Teams
as
select TeamID,TeamName, Country from Teams
go

exec sp_Teams

	----SP Insert----
go
create proc sp_insertTeam
@TeamID int,
@TeamName varchar(100)
as
insert into Teams(TeamID,TeamName)
		values (@TeamID,@TeamName)
go
exec sp_insertTeam
exec sp_insertTeam '5','KKR';


	----SP Update----
go
create proc Sp_UpdateTeams
@TeamID int,
@TeamName varchar (50)
as
Update Teams set TeamName=@TeamName
where TeamID=@TeamID
go

exec Sp_UpdateTeams '1','Mumbai Indian'
select * from Teams

	----Sp Delete----
go
create proc sp_DeleteTeam
@TeamID int
as
delete from Teams where TeamID=@TeamID
go

exec sp_DeleteTeam '5'

select * from Teams

	----SP with in Parameter----
go
create procedure SP_In
(@Team int output)
as
select COUNT(@Team) from Teams
go

exec Sp_In '5'
	
	----SP Validation----
go
create proc SP_Exception
@teamID int
as
if 
@teamID>2
print 'Ok'
Else 
Throw 50001,'Notvalid',1;
go

exec SP_Exception 3

								--------Create Trigger--------
			-----Trigger Table-----
Select * into Teamcopy from Teams
Select * from Teamcopy
go


Create Table TeamLog
(
LogID int identity(1,1),
TeamID int,
TeamName varchar(100),
Country varchar(50)
)
		----Trigger Insert----
go
create trigger tr_Insert
On Teamcopy
After Insert
as
Insert into TeamLog
(
TeamID, TeamName, Country
)
Select 
i.TeamID,i.TeamName,i.Country
From inserted i;

		----Triggers Update----
go
create trigger tr_Update
On Teamcopy
Instead Of Update
as
Begin
Declare @TeamID int
Select @TeamID = inserted.TeamID     
From inserted
end;

		-----Triggers Delete-----
go
Create Trigger tr_Delete
On Teamcopy
Instead Of Delete
as
Begin
Declare @TeamID int
Select @TeamID = inserted.TeamID     
From inserted
end;
			
			-----Check Trigger Backup Insert-----
Insert Teamcopy(TeamID,TeamName,Country)
values (5,'KKR','India')

select * from TeamLog;

			-----Check Trigger Backup Update-----

Update Teamcopy Set TeamName='Kalkata Knight Riders' where TeamID=5;
select * from TeamLog;

			-----Check Trigger Backup Delete-----
Delete Teamcopy where TeamID = 5;
select * from TeamLog;

								
								--------Instead of Trigger--------

create trigger Tr_Instead
       ON Teamcopy
INSTEAD OF DELETE
AS
BEGIN
       DECLARE @TeamId INT
       SELECT @TeamId = DELETED.TeamId       
       FROM DELETED
       IF @TeamId = 2
       BEGIN
              RAISERROR('ID 2 record cannot be deleted',16 ,1)
              ROLLBACK
              INSERT INTO TeamLog
              VALUES(@TeamId, 'Record cannot be deleted.')
       END
       ELSE
       BEGIN
              DELETE FROM Teamcopy
              WHERE TeamId = @TeamId
              INSERT INTO TeamLog
              VALUES(@TeamId, 'Instead Of Delete')
       END
END
GO
--trigger test
DELETE Teamcopy
WHERE TeamId=2
select*from TeamLog
select*from Teamcopy