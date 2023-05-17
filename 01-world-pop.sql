
create table world_pop2 (
    country varchar(100),
    Population_2020 varchar(20),
    Migrants varchar(20),
    Fert_Rate varchar(10),
    Med_Age varchar(10),
    Urban_Pop varchar(10),
    World_Share varchar(10),
    Capital_id int,
   
       FOREIGN KEY (Capital_id)  REFERENCES Capitals (Capital_id)
);

create table world_pop (
   country varchar(100),
   Population_2020 float,
   Migrants float,
   Fert_Rate float,
   Med_Age float,
   Urban_Pop float,
   World_Share float,
   Capital_id int,
   
       FOREIGN KEY (Capital_id)  REFERENCES Capitals (Capital_id)
    
 );