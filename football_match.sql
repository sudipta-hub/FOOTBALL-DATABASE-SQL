create database football_match;

create table tbiteams
(
teamid int,
teamname char(100),
constraint tbi_pk primary key(teamid)
);

create table tbiplayer_position
(
positionid int,
positiondescription char(100),
constraint pos_pk primary key(positionid)
);

create table tbiplayer
(
 playerid int,
 teamid int,
 playname char(100),
 player_squad_number int,
 positionid int,
 constraint player_pk primary key(playerid),
 constraint player_fk foreign key(teamid) references tbiteams(teamid),
 constraint player_fk1 foreign key(positionid) references tbiplayer_position(positionid)
);

create table tbi_competition
(
competitionid int,
competitionname char(100),
constraint com_pk primary key(competitionid)
);


/*create table tbi_fixtures
(
fixturedate date,
fixturetime int,
hometeamid int,
awayteamid int,
competitionid int,
constraint fix_pk primary key(fixturedate),
constraint fix_fk foreign key(competitionid) references tbi_competition(competitionid)
);
 drop table tbi_fixtures;
 
 create table tbi_fixtures
(
fixtureid int,
fixturedate date,
fixturetime int,
hometeamid int,
awayteamid int,
competitionid int,
constraint fix_pk primary key(fixtureid),
constraint fix_fk foreign key(competitionid) references tbi_competition(competitionid)
);

drop table tbi_fixtures;*/

 create table tbi_fixtures
(
fixtureid int,
fixturedate date,
fixturetime int,
hometeamid int,
awayteamid int,
competitionid int,
constraint fix_pk primary key(fixtureid),
constraint fix_fk foreign key(competitionid) references tbi_competition(competitionid)
);

create table tbi_player_fixtures
(
fixtureid int,
playerid int,
goals_scored int,
constraint pla_pk primary key(goals_scored),
constraint pla_fk foreign key(fixtureid) references tbi_fixtures(fixtureid),
constraint pla_fk1 foreign key(playerid) references tbiplayer(playerid)
);
