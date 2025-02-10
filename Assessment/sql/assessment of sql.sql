create database assessment;
use assessment;
create table  city (
id  int primary key auto_increment,
city_name varchar(50),
lat float, 
long1 float,
country_id int
);

INSERT INTO `assessment`.`city` (`id`, `city_name`, `lat`, `long1`, `country_id`) VALUES ('1', 'berlin', '52.520008', '13.404954', '1');
INSERT INTO `assessment`.`city` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('belgrade', '44.787197', '20.457273', '2');
INSERT INTO `assessment`.`city` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('zagreb', '45.815399', '15.966568', '3');
INSERT INTO `assessment`.`city` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('New York', '40.730610', '-73.935242', '4');
INSERT INTO `assessment`.`city` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('Los Angels', '34.052235', '-118.243683', '4');
INSERT INTO `assessment`.`city` (`city_name`, `lat`, `long1`, `country_id`) VALUES ('warsaw', '52.237049', '21.017532', '5');
