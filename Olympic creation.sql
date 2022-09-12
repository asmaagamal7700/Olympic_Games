create table Athlete_Events (
 ID Integer ,
 name varchar(225) ,
 Gender varchar(1) ,
 Age Integer ,
 Height float ,
 Weight float ,
 Team varchar(225) ,
 NOC varchar(3) ,
 Games text ,
 Year integer ,
 Season varchar(225) ,
 City varchar(225) ,
 Sport varchar(225) ,
 Event text ,
 Medal varchar(225) 
);

COPY Athlete_Events FROM 'E:\DA\athlete_events.csv' DELIMITER ',' CSV HEADER null 'NA';

create table NOC_Regions (

 NOC varchar(3) ,
 Regions varchar(225) ,
 Notes text

);

COPY NOC_Regions FROM 'E:\DA\noc_regions.csv' DELIMITER ',' CSV HEADER null ' ';















