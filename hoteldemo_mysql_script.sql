-- to execute below script, at mysql command prompt , use command as SOURCE c:\<hoteldemo_mysql_script.sql>
create database hotels;
use hotels;
create table hotelcatalog (hotelname varchar(100) NOT NULL,
city varchar(50) not null,
address1 varchar(250) not null,
stateprovincecode varchar(10) not null, 
countrycode varchar(2) not null,
airportcode varchar(10) not null, 
locationDescription varchar(250) not null,
amenityMask LONG, 
postalCode varchar(20) not null, 
rateCurrencyCode varchar(3) not null ,
 hotelid int not null,
 rating int not null,
 tripAdvisorRating int not null, 
 tripAdvisorRatingUrl varchar(250) not null,
 review varchar(250),
roomtype varchar(50),
availablerooms int,
price double);

create table hotelreview(hotelid int not null, reviewdesc varchar(250) not null);

insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,review,roomtype,availablerooms,price) 
values ("Hotel Andra","Seattle","2000 4th Ave","WA","US","SEA","Near Pike Place Market",1441795,"98121","USD",119562,4,4,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif","nice hotel","luxury",20,250.0);

insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,review,roomtype,availablerooms,price) 
values ("Hotel Deca - A Noble House Hotel","Burlingame","4507 Brooklyn Avenue NE","WA","US","SEA","In Seattle (University District)",1441795,"98105","USD",191964,3,3,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif","high end hotel","deluxe",10,350.0);

insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,review,roomtype,availablerooms,price) 
values ("Sheraton Seattle Hotel","New York","1400 6th Ave","WA","US","SEA","In Seattle (University District)",262147,"98101","USD",164116,4,4,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif","high end hotel","deluxe",10,350.0);

insert into hotelreview(hotelid,reviewdesc) values (98121,"review about hotel test");
insert into hotelreview(hotelid,reviewdesc) values (98121,"Nice  to stay at Hotel Andra");
insert into hotelreview(hotelid,reviewdesc) values (98101,"review about Sheraton Seattle Hotel");