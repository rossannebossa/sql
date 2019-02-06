use SoccerLeague

GO
CREATE TABLE PlayingPosition
(
PlayingPositionID int PRIMARY KEY identity(1,1),
PDescription varchar(100)
)

GO
CREATE TABLE Team
(
TeamID int PRIMARY KEY identity(1,1),
TeamName varchar(30),
LeagueGoals int,
LeaguePoints int
)

GO
CREATE TABLE Player
(
PlayerID int PRIMARY KEY identity(1,1),
FirstName varchar(30),
LastName varchar(30),
PlayingPositionIDFK int references PlayingPosition(PlayingPositionID) NOT NULL,
TeamIDFK int references Team(TeamID) NOT NULL,
JerseyNumber int,
LeagueGoals int,
DateOfBirth DateTime
)

GO
CREATE TABLE StadiumClass
(
ClassID int PRIMARY KEY identity(1,1),
SDescription varchar(30)
)

GO
CREATE TABLE Stadium
(
StadiumID int PRIMARY KEY identity(1,1),
StadiumName varchar(30),
SAddress varchar(30),
MaxCapacity int,
ClassIDFK int references StadiumClass(ClassID)
)

GO
CREATE TABLE Referee
(
RefereeID int PRIMARY KEY identity(1,1),
FirstName varchar(30),
LastName varchar(30),
DateOfBirth DateTime
)

GO
CREATE TABLE Match
(
MatchID int PRIMARY KEY identity(1,1),
HomeTeamID int references Team(TeamID) NOT NULL,
HomeGoals int,
AwayTeam int references Team(TeamID) NOT NULL,
AwayGoals int,
PrimaryRef int references Referee(RefereeID) NOT NULL, 
SecondaryRef int references Referee(RefereeID) NOT NULL,
SatdiumID int references Stadium(StadiumID) NOT NULL,
MatchDate DateTime
)