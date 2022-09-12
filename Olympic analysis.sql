
--• Olympic History General Information:
-----------------------------------------------------
--1. What is the beginning and ending years?
select max(Year) ,min(Year)
from Athlete_Events ;

--2. How many Olympics have been held in 120 years?
select distinct(Games)
from Athlete_Events ;

--3. What are total number of medals by season?
select count( Medal) ,Season
from Athlete_Events 
group by Season ;

--• Gender In Olympic Games:
----------------------------------------------------

--1. What is gender ratio over seasons?
select 100* cast(sum(case when Gender = 'M' then 1 else 0 end) as float) /count(*) as male ,
       100* cast(sum(case when Gender = 'F' then 1 else 0 end) as float)/count(*) as famale
	   from Athlete_Events ;

--2. What is gender number over medal?
select sum(case when Gender = 'M' then 1 else 0 end) as male ,
       sum(case when Gender = 'F' then 1 else 0 end)  as famale ,
	   Medal
	   from Athlete_Events
	   where Medal <>'NA'
	   group by Medal;
	   
--• Region Analyze:
----------------------------------------------------
--1. Which country has the most athletes?

select NOC_Regions.Regions  ,count(distinct Athlete_Events.Name ) as count
from Athlete_Events
INNER JOIN NOC_Regions 
ON Athlete_Events.NOC = NOC_Regions.NOC 
group by Regions
order by count desc
limit 1;

--2. What is the medal count by country?

select NOC_Regions.Regions ,count(Athlete_Events.Medal) as medals
from Athlete_Events
INNER JOIN NOC_Regions 
ON Athlete_Events.NOC = NOC_Regions.NOC 
where Athlete_Events.Medal <> 'NA'
group by Regions ;

--• Athlete Performance:
----------------------------------------------------
--1. Who has participated in the most Olympic Games?

select Name ,count(distinct Games) 
from Athlete_Events 
group by Name
order by count DESC
limit 1 ;

--2. Who are top athletes by medal?

select Name ,count(Medal) 
from Athlete_Events 
group by Name
order by count DESC
limit 1 ;














