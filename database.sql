CREATE TABLE Account(
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    PRIMARY KEY (UserName, Password)
);

CREATE TABLE Customer(
    CustomerId int(10) NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    DOB varchar(10),
    Email varchar(30),
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    FOREIGN KEY (UserName) REFERENCES Account(UserName),
    FOREIGN KEY (Password) REFERENCES Account(Password),
    PRIMARY KEY (CustomerId, UserName, Password)
);

CREATE TABLE Contact_Customer(
    ContactNo int(20) NOT NULL,
    CustomerId int(10) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    PRIMARY KEY (CustomerId,ContactNo)
);

CREATE TABLE Driver(
    DriverId int NOT NULL,
    FirstName varchar(20),
    LastName varchar(20),
    YearsOfExperience int,
    AvgRating int,
    Email varchar(30),
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    FOREIGN KEY (UserName) REFERENCES Account(UserName),
    FOREIGN KEY (Password) REFERENCES Account(Password),
    PRIMARY KEY (DriverId)
);

CREATE TABLE Contact_Driver(
    ContactNo int(20) NOT NULL,
    DriverId int(10) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    PRIMARY KEY (DriverId,ContactNo)
);



insert into Account
values ('sarvesh_13', 'abcd');

insert into Account
values ('nikhil_13', 'efgh');

insert into Account
values ('manan_11', 'ijkl');

insert into Account
values ('chaitya_16', 'mnop');

insert into Account
values ('tejas_16', 'qrst');

insert into Customer
values (34,'nikhil','babar','27 oct','nikhilbabar@gmail.com', 'sarvesh_13', 'abcd');

insert into Customer
values (50,'Sarvesh','Deshpande','19 sep','Sarvesh@gmail.com', 'sarvesh_13', 'abcd');

insert into Customer
values (56,'Manan','Chajed','4 dec','Manan@gmail.com','manan_11', 'ijkl');

insert into Customer
values (35,'chaitya','dobariya','9 august','chaitya@gmail.com','chaitya_16', 'mnop');

insert into Customer
values (10,'Tejas','durgudhe','10 oct','Tejas@gmail.com','tejas_16', 'qrst');

insert into Contact_Customer
values (948939299,34);

insert into Contact_Customer
values (849302584,34);

insert into Contact_Customer
values (948939299,50);

insert into Contact_Customer
values (849352584,50);


insert into Account
values ('ajay_13', 'abcd');

insert into Account
values ('vijay_13', 'efgh');

insert into Account
values ('bijay_11', 'ijkl');

insert into Account
values ('jay_16', 'mnop');
    
insert into Driver
values (44,'ajay','kumar',10,4,"ajay@gmail.com",'ajay_13', 'abcd');

insert into Driver
values (41,'vijay','kumar',11,5,"vijay@gmail.com",'vijay_13', 'efgh');

insert into Driver
values (90,'bijay','kumar',20,4,"bijay@gmail.com",'bijay_11', 'ijkl');

insert into Driver
values (34,'jay','kumar',10,4,"jay@gmail.com",'jay_16', 'mnop');

insert into Contact_Driver
values (849352584,34);

insert into Contact_Driver
values (449352584,34);

insert into Contact_Driver
values (849354584,44);

insert into Contact_Driver
values (993352584,44);

insert into Contact_Driver
values (549352584,90);

insert into Contact_Driver
values (849352584,41);


CREATE TABLE Routes(
    Source varchar(30) NOT NULL,
    Destination varchar(30) NOT NULL,
    Distance int,
    Fare int,
    RouteNo int,
    PRIMARY KEY (RouteNo)
);

CREATE TABLE Vehicle(
    RegNo int NOT NULL,
    Model varchar(20),
    Type varchar(20),
    LastService varchar(15),
    PRIMARY KEY (RegNo)
);

CREATE TABLE Driver_Vehicle_relation(
    DriverId int NOT NULL,
    RegNo int NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (RegNo) REFERENCES Vehicle(RegNo),
    PRIMARY KEY (DriverId, RegNo)
);

CREATE TABLE Journey(
    CustomerId int,
    DriverId int,
    RouteNo int,
    RegNo int,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (RouteNo) REFERENCES Routes(RouteNo),
    FOREIGN KEY (RegNo) REFERENCES Vehicle(RegNo),
    PRIMARY KEY (CustomerId,DriverId, RouteNo, RegNo)    
);

INSERT INTO Routes 
VALUES("Mumbai","Pune",152,3000,101);

INSERT INTO Routes 
VALUES("Thane","Andheri",22,1000,201);

INSERT INTO Routes 
VALUES("Andheri","Vasai",46,1200,301);

INSERT INTO Vehicle 
VALUES(11001,"Swift","Sedan","August");

INSERT INTO Vehicle 
VALUES(11002,"Ciaz","Sedan","September");

INSERT INTO Vehicle 
VALUES(11003,"Creta","SUV","July");

INSERT INTO Vehicle 
VALUES(11004,"Harrier","SUV","August");

INSERT INTO Vehicle 
VALUES(11005,"BMW X1","Luxury","October");

INSERT INTO Driver_Vehicle_relation
VALUES(11001,90);

INSERT INTO Driver_Vehicle_relation
VALUES(11002,34);

INSERT INTO Driver_Vehicle_relation
VALUES(11003,41);

