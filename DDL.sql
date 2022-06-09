drop table Nation
drop table Team
drop table Player
drop table Tournament
drop table Team_Player
drop table Season
drop table Awards
drop table Game
drop table Goal
--1 
create table Nation 
	(id int not null,
	name varchar (50),
	Stadium varchar (100),
	manager varchar (50),
	primary key (id)
	);
--2
create table Team
	(id int not null, 
	name varchar (50),
	country_id int, 
	city varchar (50),
	Stadium varchar (100), 
	manager varchar (50),
	isNational Bit,
	primary key (id),
	foreign key (country_id) references Nation (id) 
	);
--3
create table Player
	(id int not null,
	firstName varchar (50), 
	lastName varchar (50), 
	Team_id int, 
	nationality_id int, 
	isNationalPlayer Bit,
	primary key (id), 
	foreign key (Team_id) references Team (id),
	foreign key (nationality_id) references Nation (id) 
	);
--4
create table Tournament
	(id int not null,
	name varchar (50), 
	numberOfTeams int, 
	isInternational Bit,
	primary key (id)
	);
--5
create table Team_Player
	(Team_id int not null,
	player_id int not null, 
	shirtNumber int,
	primary key (Team_id, player_id),
	foreign key (Team_id) references Team (id),
	foreign key (player_id) references Player (id) 
	);
--6
create table Season 
	(firstHalfYear int not null, 
	secondHalfYear int,
	primary key (firstHalfYear) 
	);

--7
create table Awards
	(tournament_id int not null, 
	season_id int not null, 
	championTeam_id int, 
	topScorer_id int, 
	bestPlayer_id int,
	primary key (tournament_id, season_id),
	foreign key (tournament_id) references Tournament (id),
	foreign key (season_id) references Season (firstHalfYear),
	foreign key (championTeam_id) references Team (id),
	foreign key (topScorer_id) references Player (id),
	foreign key (bestPlayer_id) references Player (id) 
	);
--8
create table Game
	(id int not null, 
	tournament_id int, 
	homeTeam_id int, 
	awayTeam_id int, 
	homeTeamGoals int, 
	awayTeamGoals int, 
	season_id int, 
	Stadium varchar (100), 
	primary key (id),
	foreign key (tournament_id) references Tournament (id),
	foreign key (homeTeam_id) references Team (id),
	foreign key (awayTeam_id) references Team (id),
	foreign key (season_id) references Season (firstHalfYear) 
	);
--9
create table Goal
	(id int not null, 
	game_id int not null, 
	scorerPlayer_id int, 
	scorerTeam_id int, 
	minute_ int, 
	primary key (id, game_id),
	foreign key (scorerPlayer_id) references Player (id),
	foreign key (scorerTeam_id) references Team (id) 
	);


