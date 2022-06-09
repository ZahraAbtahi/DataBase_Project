--1
select distinct Player.firstName, Player.lastName
from Player, Goal
where Player.id = Goal.scorerPlayer_id and Goal.minute_ > 80

--2
select Player.firstName, Player.lastName
from Player, Nation
where Player.nationality_id = Nation.id and Nation.name = 'France' and Player.isNationalPlayer not in (select Player.isNationalPlayer from Player where Player.isNationalPlayer = 1)

--3
select distinct Team.name
from Team, Game
where (Game.awayTeam_id = Team.id or Game.homeTeam_id = Team.id) and Game.season_id = 2018 and Game.tournament_id in (select Tournament.id 
from Tournament 
where Tournament.name = 'LaLiga')

--4
select Player.firstName, Player.lastName
from Player, Team_Player
where Player.id = Team_Player.player_id and Team_Player.Team_id in (select distinct Team.id
from Team, Game
where (Game.awayTeam_id = Team.id or Game.homeTeam_id = Team.id) and Game.tournament_id in (select Tournament.id 
from Tournament 
where Tournament.name = 'LaLiga'))

--5-BestPlayer
select distinct Player.firstName, Player.lastName
from Player, Awards
where Player.id = Awards.bestPlayer_id and Awards.season_id = 2019 and Awards.tournament_id in (select Tournament.id 
from Tournament 
where Tournament.name = 'BundesLiga')

--5-TopScorer
select distinct Player.firstName, Player.lastName
from Player, Awards
where Player.id = Awards.topScorer_id and Awards.season_id = 2019 and Awards.tournament_id in (select Tournament.id 
from Tournament 
where Tournament.name = 'BundesLiga')

--6
WITH temporaryTable as 
(select Goal.scorerPlayer_id as 'id', count (Goal.id) as 'GoalNum'
from Goal where Goal.game_id in (select Game.id from Game where Game.season_id >= 2015)
group by Goal.scorerPlayer_id)
select firstName,lastName, GoalNum
from temporaryTable, Player
where GoalNum >= all (select GoalNum from temporaryTable) and Player.id = temporaryTable.id

--7
WITH temporaryTable as 
(select Goal.scorerPlayer_id, count(Goal.id) as goalNum from Goal, Game 
where Goal.game_id = Game.id and Game.season_id = 2020 and Game.tournament_id in (select Tournament.id 
from Tournament where Tournament.name = 'Champions_League')
group by Goal.scorerPlayer_id )
select Player.firstName, Player.lastName 
from Player, temporaryTable
where temporaryTable.goalNum > 15 and Player.id = temporaryTable.scorerPlayer_id

--8
select Team.name
from Team, Game 
where Team.id = Game.awayTeam_id and Game.Stadium = 'Wembley' and Game.season_id = 2020 

--9
select Awards.season_id 
from Awards 
where Awards.tournament_id in (select tournament.id from Tournament where name = 'Premier_League') and 
Awards.bestPlayer_id in (select Team_Player.Player_id
from Team_Player where Team_id in (select Team.id from Team Where Team.name = 'Arsenal'))

--10
with temporaryTable as
(select Awards.championTeam_id, Awards.season_id, count(Awards.tournament_id) as num
from Awards 
group by Awards.championTeam_id, Awards.season_id 
having count(Awards.tournament_id) >= 3)
select Team.name 
from Team
where Team.id in (select championTeam_id from temporaryTable )








