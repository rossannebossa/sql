Go
Insert into PlayingPosition
(PDescription)
Values
('Front Field')

Go
Insert into PlayingPosition
(PDescription)
Values
('Back Field')

Go
Insert into PlayingPosition
(PDescription)
Values
('Center Field')

Go
Insert into Team
(TeamName,LeagueGoals,LeaguePoints)
Values
('Chelsea',10,50)

Go
Insert into Team
(TeamName,LeagueGoals,LeaguePoints)
Values
('Manchester',19,45)

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Piet','Pompies',1,1,1,2,'1998-05-16')

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Peter','Griffin',2,1,2,2,'1998-05-18')

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Lala','Bala',3,1,3,6,'1998-05-16')

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Piet','Klompies',1,2,1,2,'1998-05-16')

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Stewie','Griffin',2,2,2,2,'1998-05-18')

Go
Insert into Player
(FirstName,LastName,PlayingPositionIDFK,TeamIDFK,JerseyNumber,LeagueGoals,DateOfBirth)
Values
('Lalala','Balaba',3,2,3,5,'1998-05-16')

Go
Insert into Referee
(FirstName,LastName,DateOfBirth)
Values
('Mala','Moyo','1980-10-10')

Go
Insert into StadiumClass
(SDescription)
Values
('BIG')


Go
Insert into Stadium
(StadiumName,SAddress,MaxCapacity,ClassIDFK)
Values
('Mada','Dont know',5000,1)

GO
Insert into Match
(HomeTeamID,HomeGoals,AwayTeam,AwayGoals,PrimaryRef,SecondaryRef,SatdiumID,MatchDate)
Values
(1,10,2,9,1,1,1,'2016-01-02')