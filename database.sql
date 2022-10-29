CREATE TABLE Account(
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    PRIMARY KEY (UserName, Password)
);

CREATE TABLE Customer(
    CustomerId int(10) NOT NULL,
    FirstName varchar(20),
    MiddleName varchar(20),
    LastName varchar(20),
    DOB varchar(10),
    Email varchar(30),
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    FOREIGN KEY (UserName, Password) REFERENCES Account(UserName, Password),
    PRIMARY KEY (CustomerId, UserName, Password)
);

CREATE TABLE Contact_Customer(
    ContactNo int(20) NOT NULL,
    CustomerId int(10) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    PRIMARY KEY (CustomerId, ContactNo)
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
    FOREIGN KEY (UserName, Password) REFERENCES Account(UserName, Password),
    PRIMARY KEY (DriverId)
);

CREATE TABLE Contact_Driver(
    ContactNo int(20) NOT NULL,
    DriverId int(10) NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    PRIMARY KEY (DriverId, ContactNo)
);

CREATE TABLE Routes(
    Source varchar(30) NOT NULL,
    Destination varchar(30) NOT NULL,
    Distance int,
    Fare int,
    RouteNo int,
    PRIMARY KEY (RouteNo)
);

CREATE TABLE Vehicle(
    LicenseNo int NOT NULL,
    Model varchar(20),
    Type varchar(20),
    LastService varchar(15),
    PRIMARY KEY (LicenseNo)
);

CREATE TABLE Driver_Vehicle_relation(
    DriverId int NOT NULL,
    LicenseNo int NOT NULL,
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (LicenseNo) REFERENCES Vehicle(LicenseNo),
    PRIMARY KEY (DriverId, LicenseNo)
);

CREATE TABLE Journey(
    CustomerId int,
    DriverId int,
    RouteNo int,
    LicenseNo int,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (DriverId) REFERENCES Driver(DriverId),
    FOREIGN KEY (RouteNo) REFERENCES Routes(RouteNo),
    FOREIGN KEY (LicenseNo) REFERENCES Vehicle(LicenseNo),
    PRIMARY KEY (CustomerId, DriverId, RouteNo, LicenseNo)
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
values (34,'nikhil', 'abc', 'babar','27 oct','nikhilbabar@gmail.com', 'sarvesh_13', 'abcd');

insert into Customer
values (50,'Sarvesh', 'def','Deshpande','19 sep','Sarvesh@gmail.com', 'sarvesh_13', 'abcd');

insert into Customer
values (56,'Manan', 'ghi','Chajed','4 dec','Manan@gmail.com','manan_11', 'ijkl');

insert into Customer
values (35,'chaitya', 'jkl','dobariya','9 august','chaitya@gmail.com','chaitya_16', 'mnop');

insert into Customer
values (10,'Tejas', 'mno','durgudhe','10 oct','Tejas@gmail.com','tejas_16', 'qrst');


insert into Contact_Customer
values (948939299,34);

insert into Contact_Customer
values (849302584,50);

insert into Contact_Customer
values (948939299,56);

insert into Contact_Customer
values (849352584,35);

insert into Contact_Customer
values (844962584,10);


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