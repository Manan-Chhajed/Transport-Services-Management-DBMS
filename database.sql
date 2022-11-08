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
values ('sarvesh_9', 'pass1');

insert into Account
values ('nikhil_13', 'pass2');

insert into Account
values ('manan_11', 'pass3');

insert into Account
values ('chaitya_16', 'pass4');

insert into Account
values ('tejas_16', 'pass5');


insert into Customer
values (1,'Nikhil', 'middle1', 'babar','27 Oct','nikhilbabar@gmail.com', 'nikhil_13', 'pass2');

insert into Customer
values (2,'Sarvesh', 'middle2','Deshpande','19 Sep','sarvesh@gmail.com', 'sarvesh_9', 'pass1');

insert into Customer
values (3,'Manan', 'middle3','Chhajed','28 Aug','manan@gmail.com','manan_11', 'pass3');

insert into Customer
values (4,'Chaitya', 'middle4','Dobariya','9 Jan','chaitya@gmail.com','chaitya_16', 'pass4');

insert into Customer
values (5,'Tejas', 'middle5','Durgudhe','10 Oct','tejas@gmail.com','tejas_16', 'pass5');


insert into Contact_Customer
values (948939299,1);

insert into Contact_Customer
values (849302584,2);

insert into Contact_Customer
values (948939299,3);

insert into Contact_Customer
values (849352584,4);

insert into Contact_Customer
values (844962584,5);


insert into Account
values ('ajay_13', 'pass42');

insert into Account
values ('vijay_13', 'pass43');

insert into Account
values ('bijay_11', 'pass44');

insert into Account
values ('jay_16', 'pass45');
    

insert into Driver
values (81,'Ajay','Kumar',10,4,"ajay@gmail.com",'ajay_13', 'pass42');

insert into Driver
values (82,'Vijay','Kumar',11,5,"vijay@gmail.com",'vijay_13', 'pass43');

insert into Driver
values (83,'Bijay','Kumar',20,4,"bijay@gmail.com",'bijay_11', 'pass44');

insert into Driver
values (84,'Jay','Kumar',10,4,"jay@gmail.com",'jay_16', 'pass45');

insert into Contact_Driver
values (849352584,81);

insert into Contact_Driver
values (449352584,8);

insert into Contact_Driver
values (849354584,83);

insert into Contact_Driver
values (993352584,84);

insert into Contact_Driver
values (549352584,84);

insert into Contact_Driver
values (849352584,82);

insert into vehicle
values (11499, "Maruti", "Sedan", "1Jan2019");   

insert into vehicle
values (11500, "Tata", "HatchBack", "24July2020"); 

insert into vehicle
values (11501, "Mercedes", "Sedan", "19Oct2021"); 

insert into vehicle
values (11502, "Honda", "SUV", "12April2019"); 

insert into vehicle
values (11503, "Maruti", "HatchBack", "19Dec2019"); 

insert into routes
values ("Andheri", "Borivali", 30, 400, 773);

insert into routes
values ("Mumbai", "Delhi=", 800, 9000, 774);

insert into routes
values ("Vasai", "Dadar", 85, 750, 775);

insert into routes
values ("Goregaon", "Andheri", 25, 250, 776);

insert into routes
values ("Ghatkopar", "Andheri", 120, 11100, 777);

insert into routes
values ("Chennai", "Mumbai", 750, 6000, 778);
