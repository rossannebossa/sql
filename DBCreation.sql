use master

GO
CREATE DATABASE SoccerLeague
ON PRIMARY
(
NAME = 'LeaguePrimary',
FILENAME = 'C:\Users\User\Desktop\SoccerLeague Example\DBFILES\LeaguePrimary.mdf',
SIZE = 15MB,
MAXSIZE = unlimited,
FILEGROWTH = 10%
)

LOG ON
(
NAME = 'LeagueLog',
FILENAME = 'C:\Users\User\Desktop\SoccerLeague Example\DBFILES\LeagueLog.ldf',
SIZE = 5MB,
MAXSIZE = unlimited,
FILEGROWTH = 10%
)