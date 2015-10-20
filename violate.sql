insert into Movie
	values(null,'title',2015,'R','company');
insert into Movie
	values(4749,null,2015,'R','company');
insert into Movie
	values(4749,'title',null,'R','company');
insert into Movie
	values(4749,'title',2015,'R',null);
--Attributes id, title, year and company cannot be left null for constraints "not null"
--Terminal Error:
--

insert into Movie
	values(275,'title',2015,'R','company');
--A movie titled 'Babysitter, The' has the id 275 as the id has to be unique as it is the primary key of the table Movie
--Terminal Error:
--

insert into Actor
	values(null,'last','first','sex',2015-01-01,null);
insert into Actor
	values(68626,null,'first','sex',2015-01-01,null);
insert into Actor
	values(68626,'last',null,'sex',2015-01-01,null);
insert into Actor
	values(68626,'last','first',null,2015-01-01,null);
insert into Actor
	values(68626,'last','first','sex',null,null);
--Attributes id, last, first, sex and dob cannot be left null for constraints "not null"
--Terminal Error:
--

insert into Actor
	values(68625,'last','first','sex',2015-01-01,null);
--An actor named 'Rafal Zwierz' has the id 68625 as the id has to be unique as it is the primare key for the table Actor
--Terminal Error:
--

insert into Actor
	values(68626,'last','first','sex',2015-01-01,2014-01-01);
--An actor with their date of birth being greater than date of the death is invalid
--Terminal Error:
--

insert into Director
	values(null,'last','first','sex',2015-01-01,null);
insert into Director
	values(68626,null,'first','sex',2015-01-01,null);
insert into Director
	values(68626,'last',null,'sex',2015-01-01,null);
insert into Director
	values(68626,'last','first',null,2015-01-01,null);
insert into Director
	values(68626,'last','first','sex',null,null);
--Attributes id, last, first, sex and dob cannot be left null for constraints "not null"
--Terminal Error:
--

insert into Director
	values(23741,'last','first','sex',2015-01-01,null);
--A director named 'Claude Goretta' has the id 23741 as the id has to be unique as it is the primary key for the table Director
--Terminal Error:
--

insert into Director
	values(68626,'last','first','sex',2015-01-01,2014-01-01);
--A director with their date of birth being greater than date of the death is invalid
--Terminal Error:
--

insert into MovieGenre
	values(null,'genre');
insert into MovieGenre
	values(275,'genre');
--Attributes mid and genre cannot be left null for constraints "not null"
--Terminal Error:
--

insert into MovieGenre
	values(4749,'genre');
--As movie id 4749 does not exist in the Movie table. mid is the foreign key reffering to movie table's id
--Terminal Error:
--

insert into MovieGenre
	values(8,"Horror");
--As movie id 8 and genre "Horror" already exist in the table and there can't exist duplicates as the two attributes are the primary key for their table
--Terminal Error:
--

insert into MovieDirector
	values(null,23741);
insert into MovieDirector
	values(275,null);
--Attributes mid and did cannot be left null for constraints "not null"
--Terminal Error:
--

insert into MovieDirector
	values(4749,68626);
--As movie id 4749 and director(person) id 68626 does not exist in movie table and director table respectively, both the attributes are foreign keys reffering to movie table's id and director table's id respectively
--Terminal Error:
--

insert into MovieDirector
	values(2241,60378);
--As movie id 2241 and director id 60378 already exist in the table and there can't exist duplicates as the two attributes are the primary keys for the table
--Terminal Error:
--

insert into MovieActor
	values(null,68625,'role');
insert into MovieActor
	values(275,null,'role');
--Attributes mid and aid cannot be left null for constraints "not null"
--Terminal Error:
--

insert into MovieActor
	values(4749,68626,'role');
--As movie id 4749 and actor(person) id 68626 does not exist in movie table and actor table respectively, both the attributes are foreign keys reffering to movie table's id and actor table's id respectively
--Terminal Error:
--

insert into MovieActor
	values(323,21620,'Bobo');
--As movie id 323 and actor id 21620 already exist in the table and there can't exist duplicates as the two attributes are the primary keys for the table
--Terminal Error:
--

insert into Review
	values(null,2015-01-01 01:01:01,4749,0,'comment');
insert into Review
	values('name',null,4749,0,'comment');
insert into Review
	values('name',2015-01-01 01:01:01,null,0,'comment');
insert into Review
	values('name',2015-01-01 01:01:01,4749,null,'comment');
--Attributes name, time, mid and rating cannot be left null for constraints "not null"
--Terminal Error:
--

insert into Review
	values('name',2015-01-01 01:01:01,4749,0,'comment');
--As movie id 4749 does not exist in movie table, the attribute is a foreign key reffering to movie table's id
--Terminal Error:
--

insert into Review
	values('name',2015-01-01 01:01:01,4749,7,'comment');
--Rating must lie between 0 and 5, the check contraint enforces rating to be between those 2 values
--Terminal Error:
--