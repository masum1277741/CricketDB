USE CricketDB
Go
									--Insert
--Teams
INSERT INTO Teams (TeamID, TeamName, Country)
VALUES
    (1, 'Mumbai Indians', 'India'),
    (2, 'Sydney Thunder', 'Australia'),
    (3, 'Surrey', 'England'),
    (4, 'Dhaka Dominators', 'Bangladesh');

--Players
INSERT INTO Players (PlayerID, TeamID, FirstName, LastName, Age, Country, [Role])
VALUES
    (101, 1, 'Rohit', 'Sharma', 34, 'India',  'Batsman(c)'),
	(102, 1, 'Ishan', 'Kishan', 22, 'India', 'WK-Batsman'),
	(103, 1, 'Jasprit', 'Bumrah', 25, 'India', 'Bowler'),
	(104, 1, 'Cameron', 'Green', 26, 'Australia', 'All_rounder'),
	(105, 1, 'Jhye', 'Richardson', 24, 'Australia', 'Bowler'),
	(106, 1, 'Tilak', 'Varma', 25, 'India', 'Batsman'),
	(107, 1, 'Vishnu', 'Vinod', 29, 'India', 'Wicket-keeper'),
	(108, 1, 'Shams', 'Mulani', 25, 'India', 'All_rounder'),
	(109, 1, 'Nehal', 'Wadhera', 22, 'India', 'Batsman'),
	(110, 1, 'Raghav', 'Goyal', 21, 'India', 'Batsman'),
	(111, 1, 'Duan', 'Jansen', 22, 'South Africa', 'Bowler'),
	(201, 2, 'Alex', 'Hales', 26,'England', 'Batsman(c)'),
	(202, 2, 'Chris', 'Green', 25,'Australia', 'All_rounder'),
	(203, 2, 'Daniel', 'Sams', 23,'Australia','WK-Batsman'),
	(204, 2, 'Jason', 'Sangha', 20,'Australia','All_rounder'),
	(205, 2, 'Gurinder', 'Sandhu', 29, 'Australia', 'All_rounder'),
	(206, 2, 'David', 'Warner', 28, 'Australia', 'Batsman'),
	(207, 2, 'Nathan', 'McAndrew', 26, 'Australia', 'Bowler'),
	(208, 2, 'Alex', 'Ross', 22, 'Australia', 'Bowler'),
	(209, 2, 'Sikandar', 'Raja', 24, 'Zimbabwe', 'ALl_rounder'),
	(210, 2, 'Arafat', 'Sunny', 25, 'Bangladesh', 'Bowler'),
	(211, 2, 'Sunil', 'Narain', 27, 'WestIndies', 'All_rounder'),
	(301, 3, 'Sean', 'Abbott', 26, 'England', 'Batsman'),
	(302, 3, 'William', 'Abbott', 23, 'England', 'Batsman(c)'),
	(303, 3, 'Harry', 'Altham', 21, 'England', 'WK-Batsman'),
	(304, 3, 'David', 'Ashby', 31, 'England', 'Batsman'),
	(305, 3, 'George', 'Alexander', 26, 'England', 'All_rounder'),
	(306, 3, 'Rupesh', 'Amin', 27, 'England', 'All_rounder'),
	(307, 3, 'Azhar', 'Mahmood', 36, 'Pakistan', 'All_rounder'),
	(308, 3, 'Ravichandran', 'Ashwin', 27, 'India', 'Bowler'),
	(309, 3, 'Paul', 'Atkins', 20, 'England', 'Bowler'), 
	(310, 3, 'Carl', 'Rackemann', 30, 'Australia', 'Bowler'),
	(311, 3, 'Mohammad', 'Amir', 28, 'Pakistan', 'Bowler'),
	(401, 4, 'Soumya', 'Sarkar', 24, 'Bangladesh', 'ALL_rounder'),
	(402, 4, 'Ahmad', 'Shahzad', 29, 'Pakistan', 'Batsman'),
	(403, 4, 'Nasir', 'Hossain', 26, 'Bangladesh', 'Batsman'),
	(404, 4, 'Mohammad', 'Mithun', 24, 'Bangladesh', 'WK-Batsman'),
	(405, 4, 'Dilshan', 'Munaweera', 24, 'Srilanka', 'All_rounder'),
	(406, 4, 'Chamika', 'Karunaratne', 26, 'Srilanka', 'All_rounder'),
	(407, 4, 'Taskin', 'Ahmed', 23, 'Bangladesh', 'All_rounder(c)'),
	(408, 4, 'Shoriful', 'Islam', 22, 'Bangladesh', 'Bowler'),
	(409, 4, 'Alok', 'Kapali', 30, 'Bangladesh', 'All_rounder'),
	(410, 4, 'Al Amin', 'Hossain', 26, 'Bangladesh', 'Bowler'),
	(411, 4, 'Usman', 'Ghani', 24, 'Srilanka', 'Bowler');

--Matches
INSERT INTO Matches (MatchID, MatchType, Team1, Team2, MatchDate, WinnerTeamID, LostTeamID, Venue)
VALUES
    (1,'T-20',1,2,'2023-05-10',1,2,'Nehru Stadium'),
    (2,'T-20',1,3,'2023-05-15',1,3,'Bellerive Oval'),
    (3,'T-20',2,4,'2023-05-20',2,4,'Lords '),
    (4,'T-20',1,4,'2023-05-25',1,4,'Zafar Ali Stadium '),
    (5,'T-20',3,4, '2023-05-30',4,3,'Mangaung Oval'),
    (6,'T-20',2,3,'2023-06-05',2,3,'Bay Oval'),
    (7,'T-20',1,4,'2023-06-10',4,1,'Rangiri Dambulla International Stadium');

--Innings_Summary
INSERT INTO Innings_Summary (InningsID, MatchID, TeamID, InningsNumber, TotalRuns, WicketsLost, [Player OF the MatchID])
VALUES
    (1, 1, 1, 1, 250, 5, 103),	 (2, 1, 2, 2, 240, 4, 103),
    (3, 2, 1, 1, 280, 6, 101),	 (4, 2, 3, 2, 265, 5, 101),
	(5, 3, 2, 1, 300, 4, 210),	 (6, 3, 4, 2, 285, 5, 210),
    (7, 4, 4, 1, 270, 5, 104),   (8, 4, 1, 2, 272, 4, 104),
    (9, 5, 3, 1, 190, 6, 404),	 (10, 5, 4, 2, 191, 5, 404),
	(11, 6, 2, 1, 150, 9, 208),	 (12, 6, 3, 2, 130, 10, 208),
	(13, 7, 1, 1, 198, 2, 405),	 (14, 7, 4, 2, 199, 7, 405);

--Winning_Team_Bowler_Innings
INSERT INTO Winning_Team_Bowler_Innings (BowlerInningsID, InningsID, PlayerID, OversBowled, RunsConceded, WicketsTaken)
VALUES
    (1, 2, 103, 4, 30, 1),		(2, 2, 104, 4, 45, 1),
    (3, 2, 105, 4, 42, 0),		(4, 2, 108, 4, 50, 1),
    (5, 2, 111, 4, 53, 1),		(6, 4, 103, 4, 45, 1),
    (7, 4, 104, 4, 45, 1),		(8, 4, 105, 4, 50, 1),
    (9, 4, 108, 4, 50, 1),		(10, 4, 111, 4, 60, 1),
	(11, 6, 202, 4, 60, 0),		(12, 6, 205, 4, 48, 1),
	(13, 6, 207, 4, 50, 2),		(14, 6, 208, 4, 30, 0),
	(15, 6, 210, 4, 50, 2),		(16, 7, 103, 4, 50, 1),
	(17, 7, 104, 4, 48, 1),		(18, 7, 105, 4, 55, 1),
	(19, 7, 108, 4, 50, 0),		(20, 7, 111, 4, 51, 2),
	(21, 9, 401, 4, 30, 2),		(22, 9, 405, 4, 40, 1),
	(23, 9, 407, 4, 40, 1),		(24, 9, 408, 4, 40, 0),
	(25, 9, 410, 4, 20, 2),		(26, 12, 202, 4, 20, 3),
	(27, 12, 205, 4, 30, 2),	(28, 12, 207, 4, 10, 4),
	(29, 12, 208, 4, 40, 0),	(30, 12, 210, 4, 15, 0),
	(31, 13, 401, 4, 50, 0),	(32, 13, 405, 4, 60, 0),
	(33, 13, 407, 2, 20, 1),	(34, 13, 406, 2, 30, 1),
	(35, 13, 408, 4, 20, 0),	(36, 13, 410, 4, 10, 0);

--Winning_Team_Batting_Innings
INSERT INTO Winning_Team_Batting_Innings (BattingInningsID, InningsID, PlayerID, RunsScored, BallsFaced, Fours, Sixes)
VALUES
    (1, 1, 101, 10, 12, 2, 0),		(2, 1, 102, 30, 15, 3, 2),
    (3, 1, 103, 100, 40, 12, 5),	(4, 1, 104, 20, 10, 1, 1),
    (5, 1, 105, 40, 15, 7, 1),		(6, 1, 106, 30, 18, 6, 0),
    (7, 1, 107, 10, 10, 0, 1),		(8, 3, 101, 100, 36, 13, 6),
    (9, 3, 102, 100, 40, 17, 4),	(10, 3, 103, 20, 8, 2, 1),
	(11, 3, 104, 10, 6, 0, 1),		(12, 3, 105, 10, 5, 1, 1),
	(13, 3, 106, 10, 5, 1, 1),		(14, 3, 107, 10, 4, 1, 1),
	(15, 3, 108, 10, 6, 1, 1),		(16, 5, 201, 80, 40, 10, 5),
	(17, 5, 202, 120, 50, 15, 7),	(18, 5, 203, 50, 12, 7, 4),
	(19, 5, 204, 30, 10, 5, 1),		(20, 5, 205, 0, 1, 0, 0),
	(21, 5, 206, 15, 7, 3, 0),		(22, 8, 101, 50, 22, 3, 5),
	(23, 8, 102, 50, 23, 4,2),		(24, 8, 103, 40, 20, 5, 1),
	(25, 8, 104, 120, 45, 15,3),	(26, 8, 105, 5, 5, 1, 0),
	(27, 8, 106, 5, 5, 1, 0),		(28, 10, 401, 10, 6, 1, 1),
	(29, 10, 402, 0, 1, 0, 0),		(30, 10, 403, 5, 3, 1, 0),
	(31, 10, 404, 150, 77, 20, 10),	(32, 10, 405, 5, 3, 0, 0),
	(33, 10, 406, 10, 10, 1, 0),	(34, 10, 407, 10, 20, 0, 0),
	(35, 11, 201, 20, 14, 1, 1),	(36, 11, 202, 5, 4, 1, 0),
	(37, 11, 203, 7, 4, 1, 0),		(38, 11, 204, 3, 3, 0, 0),
	(39, 11, 205, 15, 10, 1, 1),	(40, 11, 206, 10, 8, 1, 0),
	(41, 11, 207, 10, 11, 1, 0),	(42, 11, 208, 70, 60, 8, 5),
	(43, 11, 209, 0, 1, 0, 0),		(44, 11, 210, 2, 3, 0, 0),
	(45, 11, 211, 8, 6, 1, 0),		(46, 14, 401, 50, 30, 6, 2),
	(47, 14, 402, 0, 2, 0, 0),		(48, 14, 403, 0, 3, 0, 0),
	(49, 14, 404, 0, 1, 0, 0),		(50, 14, 405, 100, 60, 10, 5),
	(51, 14, 406, 30, 15, 1, 2),	(52, 14, 407, 0, 2, 0, 0),
	(53, 14, 408, 0, 1, 0, 0),		(54, 14, 409, 15, 6, 1, 1);
--View Table
	Select * From Teams
	Select * From Players
	Select * From Matches
	Select * From Innings_Summary
	Select * From Winning_Team_Bowler_Innings
	Select * From Winning_Team_Batting_Innings
	Select * Into Playerscopy from Players

--------Aggregate Function--------
		----Delete----
	---Delte a single Row---
Delete from Playerscopy where PlayerID=101

	----Delete All Records----
Delete from Playerscopy

	----Count All Row----
select COUNT(*) as 'Number of Players' from Players

	----Count Only one Column Row----
Select COUNT(PlayerID) as 'Number of Players' from Players
	
	----Average----
Select AVG(RunsScored) as 'AverageRuns' from Winning_Team_Batting_Innings

	----Summetion----
Select SUM(Sixes) as TotalSix from Winning_Team_Batting_Innings

	----Maximum----
Select MAX(RunsScored) as MaxRuns from Winning_Team_Batting_Innings

	----Minimum----
Select MIN(RunsScored) as MinRun from Winning_Team_Batting_Innings

			-----Order By-----
Select * from Players order by PlayerID desc;

								--------Summary--------
	----Group By----
Select COUNT(TeamID) as Total, Country from Players
Group By Country

	----Having----
Select COUNT(TeamID) as Total, Country from Players
Group By Country
having Count(TeamID)<10
order by COUNT(TeamID) desc;

	----RollUp----
Select COUNT (TeamID) as [ID],FirstName from Players
Group By Rollup (FirstName);

	----Cube----
Select BattingInningsID,SUM(Fours) as TotalFours from Winning_Team_Batting_Innings
Group By Cube(BattingInningsID)
Order By BattingInningsID;

	----Grouping Sets----
Select BattingInningsID,RunsScored,Sixes, Fours from Winning_Team_Batting_Innings
Group By Grouping Sets(BattingInningsID,RunsScored,Sixes, Fours)

	----Over----
Select BattingInningsID,RunsScored,Sixes, Fours, Count(*) over(Partition By RunsScored) as TotalRuns
from Winning_Team_Batting_Innings

			-----Exist-----
Select * From Teams
Where Exists  (
Select *
From Players
Where Teams.TeamId = Players.TeamID
);

			-----Not Exist-----
Select * From Teams
Where Not Exists  (
Select *
From Players
Where Teams.TeamId = Players.TeamID
);
			-----Any-----
Select * from Teams
where TeamID>Any
(
Select TeamID from Players
);

			-----All-----
Select * from Teams
where TeamID>All
(
Select TeamID from Players
);

			------Cast-----
Select CAST('Super League' as varchar)

			-----Convert-----
select datetime =convert(datetime, '30-September-2023 10:20:17')

			-----Union-----
select TeamName as Team from Teams
Union
select FirstName as PlayerName from Players

								
								--------Join query for Batting statistics--------
Select
    I.InningsID, I.TeamID, I.InningsNumber, I.TotalRuns, I.WicketsLost,
	P.FirstName + ' ' +  LastName As BatsmanName,
    WTBI.RunsScored,
    WTBI.BallsFaced,
    WTBI.Fours,
    WTBI.Sixes
From Innings_Summary I
INNER JOIN Winning_Team_Batting_Innings WTBI ON I.InningsID = WTBI.InningsID
INNER JOIN Players P ON WTBI.PlayerID = P.PlayerID;
								
								--------Join query for Bowling statistics--------
Select
    WTBI.BowlerInningsID,
    WTBI.InningsID,
    T.TeamName As TeamName,
    P.FirstName + ' ' + P.LastName As PlayerName,
    WTBI.OversBowled,
    WTBI.RunsConceded,
    WTBI.WicketsTaken
From
    Winning_Team_Bowler_Innings WTBI
INNER JOIN
    Innings_Summary ISummary ON WTBI.InningsID = ISummary.InningsID
INNER JOIN
    Teams T ON ISummary.TeamID = T.TeamID
INNER JOIN
    Players P ON WTBI.PlayerID = P.PlayerID;

									
									--Sub-Query
Select FirstName, LastName
From Players
Where PlayerID IN (
    Select Distinct P.PlayerID
    From Winning_Team_Batting_Innings WBI
    INNER JOIN Players P ON WBI.PlayerID = P.PlayerID
    Where WBI.RunsScored > 50
);

								
								-------CTE-------
With Centurions As (
   Select
        wi.InningsID,
        wi.PlayerID,
        ws.TeamID AS WinningTeamID,
        ws.InningsNumber,
        ws.TotalRuns AS Team_Scored
    From Winning_Team_Batting_Innings wi
    INNER JOIN Innings_Summary ws ON wi.InningsID = ws.InningsID
    Where wi.RunsScored >= 100
)
Select
    p.PlayerID,
    p.FirstName,
    p.LastName,
    p.Country,
    c.InningsNumber,
    c.Team_Scored
From Centurions c
INNER JOIN Players p ON c.PlayerID = p.PlayerID; 


							--------Merge(Insert,Update)--------

Merge Into Players As Target
USING (
    VALUES (101, 1, 'Rohit', 'Sharma', 34, 'India', 'Batsman(c)')
	  )
		AS Source (PlayerID, TeamID, FirstName, LastName, Age, Country, [Role])
ON Target.PlayerID = Source.PlayerID
WHEN MATCHED THEN
    UPDATE SET
        Target.TeamID = Source.TeamID,
        Target.FirstName = Source.FirstName,
        Target.LastName = Source.LastName,
        Target.Age = Source.Age,
        Target.Country = Source.Country,
        Target.[Role] = Source.[Role]
WHEN NOT MATCHED THEN
    INSERT (PlayerID, TeamID, FirstName, LastName, Age, Country, [Role])
    VALUES (Source.PlayerID, Source.TeamID, Source.FirstName, Source.LastName, Source.Age, Source.Country, Source.[Role]);

								
								------Function-------
								
								----Table valued function----
Create function GetPlayersInTeam(@TeamID INT)
Returns Table
AS
Return (
    Select * From Players Where TeamID = @TeamID
);
Select * From GetPlayersInTeam(1);

								
								-----Scalar valued function-----
Create function fn_team_count
()
returns int
begin
declare @c int;
select @c = count(*) from Teams;
return @c;
end;
---
select dbo.fn_team_count();
								
								------Multi statement function-------
Create function GetMatchSummary(@MatchID INT)
Returns @SummaryTable Table (
    InningsNumber INT,
    TeamName VARCHAR(100),
    TotalRuns INT,
    WicketsLost INT
)
AS
Begin
    Insert Into @SummaryTable
    Select
        InningsNumber,
        T.TeamName,
        I.TotalRuns,
        I.WicketsLost
    From Innings_Summary AS I
    JOIN Teams As T ON I.TeamID = T.TeamID
    Where I.MatchID = @MatchID;
    
    Return;
End;
Select * From GetMatchSummary(1);
							
							-----Other Function-----
									
									----Case----
Select
    FirstName,
    LastName,
    [Role],
    Case
        WHEN [Role] LIKE 'Batsman%' THEN 'Batsman'
        WHEN [Role] LIKE 'Bowler%' THEN 'Bowler'
        ELSE 'Other'
    End AS PlayerCategory
From
    Players;

						-----IsNull------
Select PlayerID, Isnull(LastName, '') As LastName
From Players;
						
						-------Coalesce----
Select PlayerID, COALESCE(FirstName, LastName) AS PlayerName
From Players;
							
							----IIF----
Select PlayerID, IIF(Country = 'India', 'Yes', 'No') AS IsIndian
From Players;
							
							----Choose----
Select TeamID, CHOOSE(TeamID, 'Mumbai Indians', 'Sydney Thunder', 'Surrey', 'Dhaka Dominators') AS TeamName
From Teams;
							
							----Grouping----
Select TeamID, SUM(TotalRuns) AS TotalRunsScored
From Innings_Summary
GROUP BY TeamID;
								
								----Ranking----
Select
    FirstName,
    Country,[Role], InningsID, RunsScored,
    ROW_NUMBER() OVER (ORDER BY Country) AS RowNum,
    RANK() OVER (ORDER BY Country) AS Rank,
    DENSE_RANK() OVER (ORDER BY Country) AS DenseRank,
    NTILE(4) OVER (ORDER BY Country) AS Quartile
From Players
Join Winning_Team_Batting_Innings On Players.PlayerID = Winning_Team_Batting_Innings.PlayerID
Where InningsID <=7;
								
								----Analytic----
Select PlayerID,FirstName,
Last_Value(LastName) Over (Order BY PlayerID) as LastName,
LEAD(FirstName) Over (Order BY PlayerID) as NextPlayer,
LAG(FirstName) Over (Order BY PlayerID) as PreviousPlayer,
PERCENT_RANK() Over (Order BY FirstName) as PercentofPlayer,
CUME_DIST() Over (Order BY FirstName) as CumulativeDist,
PERCENTILE_CONT(0.5) Within Group (Order BY PlayerID) Over () as PctPlayer,
PERCENTILE_DISC(0.75) Within Group (Order BY PlayerID) Over () as PtdPlayer
From Players;