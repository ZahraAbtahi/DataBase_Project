delete from Nation;
delete from Team;
delete from Player;
delete from Tournament;
delete from Team_Player;
delete from Season;
delete from Awards;
delete from Game;
delete from Goal;
--1
insert into Nation values (101,'Iran','Azadi','Rayisi');
insert into Nation values (102,'USA','Michigan','Biden');
insert into Nation values (103,'France','StadedeFrance','Macron');
insert into Nation values (104,'England','Wembley','Johnson');
insert into Nation values (105,'Germany','Westfalenstadion','Steinmeier');
--2
insert into Team values (201,'Perspolis',101,'Tehran','Azadi','Golmohammadi',0);
insert into Team values (202,'NationalTeamOfIran',101,'Tehran','Azadi','Skoiich',1);
insert into Team values (203,'LosAngelesRams',102,'LosAngeles','SoFiStadium','Kroenke',0);
insert into Team values (204,'NationalTeamOfUSA',102,'MichiganCity','Michigan','Berhalter',1);
insert into Team values (205,'ParisSaint-Germain',103,'Paris','LeParcdesPrinces','Pochettino ',0);
insert into Team values (206,'NationalTeamOfFrance',103,'Paris','StadedeFrance','Deschamps',1);
insert into Team values (207,'Arsenal',104,'London','Emirates','Eidevall',0);
insert into Team values (208,'NationalTeamOfEngland',104,'London','Wembley','Southgate',1);
insert into Team values (209,'Bayern Munich',105,'Munich','Allianz','Nagelsmann',0);
insert into Team values (210,'NationalTeamOfGermany',105,'Berlin','Olympiastadion','Flick',1);
--3
insert into Player values (301,'Reza','Asadi',201,101,0);
insert into Player values (302,'Alireza','Beiranvand',201,101,1);
insert into Player values (303,'Milad','Sarlak',202,101,1);
insert into Player values (304,'Cam','Akers',203,102,0);
insert into Player values (305,'Brian','Allen',203,102,1);
insert into Player values (306,'Tremayne','Anchrum',204,102,1);
insert into Player values (307,'Denis','Franchi',205,103,0);
insert into Player values (308,'Lucas','Lavallée',205,103,1);
insert into Player values (309,'Antoine','Griezmann',206,103,1);
insert into Player values (310,'Bukayo','Saka',207,104,0);
insert into Player values (311,'Gabriel','Martinelli',207,104,1);
insert into Player values (312,'Mason','Mount',208,104,1);
insert into Player values (313,'Robert','Lewandowski',209,105,0);
insert into Player values (314,'Manuel','Neuer',209,105,1);
insert into Player values (315,'Thomas','Müller',210,105,1);
--4 
insert into Tournament values (401,'LaLiga',28,0);
insert into Tournament values (402,'BundesLiga',30,0);
insert into Tournament values (403,'Champions_League',32,1);
insert into Tournament values (404,'Premier_League',30,1);
--5
insert into Team_Player values (201,301,1);
insert into Team_Player values (201,302,2);
insert into Team_Player values (202,303,3);
insert into Team_Player values (203,304,4);
insert into Team_Player values (203,305,5);
insert into Team_Player values (204,306,6);
insert into Team_Player values (205,307,7);
insert into Team_Player values (205,308,8);
insert into Team_Player values (206,309,9);
insert into Team_Player values (207,310,10);
insert into Team_Player values (207,311,11);
insert into Team_Player values (208,312,12);
insert into Team_Player values (209,313,13);
insert into Team_Player values (209,314,14);
insert into Team_Player values (210,315,15);
--6
insert into Season values (2015,2016);
insert into Season values (2016,2017);
insert into Season values (2017,2018);
insert into Season values (2018,2019);
insert into Season values (2019,2020);
insert into Season values (2020,2021);
--7
insert into Awards values (402,2019,209,313,315);
insert into Awards values (404,2020,203,306,310);
insert into Awards values (404,2018,205,309,311);
insert into Awards values (404,2017,207,309,304);
insert into Awards values (401,2016,201,307,304);
insert into Awards values (402,2016,201,308,310);
insert into Awards values (403,2016,201,310,309);
insert into Awards values (404,2016,201,303,302);
insert into Awards values (402,2020,204,308,310);
insert into Awards values (403,2020,204,310,309);
insert into Awards values (404,2019,204,303,302);
--8
insert into Game values (801,401,202,204,5,2,2018,'SoFiStadium');
insert into Game values (802,401,206,205,2,3,2018,'SoFiStadium');
insert into Game values (803,402,201,203,1,4,2020,'Wembley');
insert into Game values (804,402,207,208,3,8,2020,'Wembley');
insert into Game values (805,403,209,210,15,8,2020,'Emirates');
--9
insert into Goal values (901,805,313,209,85);
insert into Goal values (902,805,313,209,90);
insert into Goal values (903,805,313,209,20);
insert into Goal values (904,805,313,209,11);
insert into Goal values (905,805,313,209,45);
insert into Goal values (906,805,313,209,78);
insert into Goal values (907,805,313,209,67);
insert into Goal values (908,805,313,209,23);
insert into Goal values (909,805,313,209,90);
insert into Goal values (910,805,313,209,65);
insert into Goal values (911,805,313,209,67);
insert into Goal values (912,805,313,209,89);
insert into Goal values (913,805,313,209,43);
insert into Goal values (914,805,313,209,12);
insert into Goal values (915,805,313,209,79);
insert into Goal values (916,805,313,209,87);
insert into Goal values (917,803,304,203,86);
insert into Goal values (918,803,304,203,70);
insert into Goal values (919,802,309,206,17);
insert into Goal values (920,801,306,204,83);



