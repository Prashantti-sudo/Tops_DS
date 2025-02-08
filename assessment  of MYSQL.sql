create database assessment ;
use assessment ;
create table assessment (
idd int primary key auto_increment,
city_name varchar(50),
lat float,
long1 float ,
country_id int );


ALTER TABLE  assessment
ADD CONSTRAINT  assessment
FOREIGN KEY  assessment(country_id)
REFERENCES Country_table(id);




INSERT INTO `assessment`.`assessment` (`idd`, `city_name`, `lat`, `long1`, `country_id`) VALUES ('1', 'Berlin', '52.520008', '13.404954', '1');
INSERT INTO `assessment`.`assessment` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('Belgrade', '44.787197', '20.457273', '2');
INSERT INTO `assessment`.`assessment` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('Zagreb', '45.815399', '15.966568', '3');
INSERT INTO `assessment`.`assessment` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('New York', '40.730610', '-73.935242', '4');
INSERT INTO `assessment`.`assessment` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('Los Angeles', '34.052235', '-118.243683', '4');
INSERT INTO `assessment`.`assessment` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('Warsaw', '52.237049', '21.017532', '5');

create table  Customer_table (
id int primary key auto_increment,
City_id int,
customer_add varchar(20),
next_call_date date,
ts_inserted datetime 
);
alter table Customer_table add coustomer_name varchar(50) after id ;
alter table Customer_table modify column ts_inserted datetime default current_timestamp ;
alter table Customer_table modify column next_call_date  date default (CURDATE()) ;

ALTER TABLE Customer_table
ADD CONSTRAINT Customer_table
FOREIGN KEY Customer_table(city_id)
REFERENCES assessment(idd);





INSERT INTO `assessment`.`customer_table` (`id`, `coustomer_name`, `City_id`, `customer_add`) VALUES ('1', 'jewely store', '4', 'Long Street.120');
INSERT INTO `assessment`.`customer_table` (`coustomer_name`, `City_id`, `customer_add`) VALUES ('Bakery', '1', 'Kurfurstendamn25');
INSERT INTO `assessment`.`customer_table` (`coustomer_name`, `City_id`, `customer_add`) VALUES ('cafe', '1', 'TauentziennstraBe44');
INSERT INTO `assessment`.`customer_table` (`coustomer_name`, `City_id`, `customer_add`) VALUES ('Restaurant', '3', 'ulica lipa 15');

create table   Country_table  (
id int primary key ,
country_name varchar(50),
country_name_eng varchar(50),
country_code int
);
alter table Country_table modify column country_code varchar(50)  ;

INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('1', 'Deutschland', 'Gemany', 'DEU');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('2', 'Srbija', 'Serbia', 'SRB');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('3', 'Hrvatska', 'Croatia', 'HRV');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('4', 'united States', 'united States', 'USA');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('5', 'Polkas ', 'Poland', 'POL');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('6', 'Espana', 'Spain', 'ESP');
INSERT INTO `assessment`.`country_table` (`id`, `country_name`, `country_name_eng`, `country_code`) VALUES ('7', 'Rossiya', 'Russia', 'RUS');









####### ----------------------------------------------------------------TASK 1----------------------------------------------------------------------------------------------------

SELECT  
    Country_table.Country_Name AS Country, 
    assessment.City_Name AS City, 
    Customer_table.coustomer_name AS Customer
FROM Country_table
LEFT JOIN assessment ON  Country_table.ID = assessment.country_id
LEFT JOIN Customer_table ON assessment.idd =  Customer_table.City_id
ORDER BY  assessment.City_Name ;




#-----------------------------------------------------------------Task 2---------------------------------------------------------------------------------------------------------

SELECT Country_table.ID, country_table.country_name, Customer_table.id, Customer_table. coustomer_name
FROM  Country_table
JOIN assessment ON Country_table.ID = assessment.country_id -- INNER JOIN to ensure referenced countries only
LEFT JOIN customer_table ON assessment.idd =  Customer_table.City_id -- LEFT JOIN to include cities with no customers
ORDER BY country_table.country_name, customer_table.coustomer_name;













