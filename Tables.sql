SELECT * FROM addressbook ORDER BY City;
SELECT * FROM addressbook ORDER BY State;

SELECT * FROM addressbook;
ALTER TABLE addressbook Add Type varchar(50);
UPDATE addressbook SET Type = 'Family' WHERE First_Name = 'Arshad';
UPDATE addressbook SET Type = 'Friend' WHERE First_Name = 'suraj';
UPDATE addressbook SET Type = 'Profession' WHERE First_Name = 'praful';
SELECT * FROM addressbook WHERE Type = 'Family';
--------------UC-10----------------
SELECT * FROM addressbook;
SELECT COUNT(Type) as Number_of_Type from addressbook;
--------------UC-11----------------
SELECT * FROM addressbook;
INSERT INTO addressbook (First_Name,Last_Name,Address,City,State,Zip,Phone,Email,Type)
VALUES ('Ashok','Patel','BLS','SNGH','Odisha',770091,1236547890,'ashokpatel@gmail.com','Family');
INSERT INTO addressbook (First_Name,Last_Name,Address,City,State,Zip,Phone,Email,Type)
VALUES ('Ashok','Patel','BLS','SNGH','Odisha',770091,1236547890,'ashokpatel@gmail.com','Friend');
--------------UC-12----------------

create table Contacttype( cont_id int primary key identity(1,1),
Contacttype_Name varchar(255),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(AddressBook_Id));
create table AddressDetails(
Contact_ID int identity(1,1) primary key,
FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(addressbook_Id));

create table person( person_id int primary key identity(1,1),
person_name varchar(255),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(Addressbook_Id));

select * from addressbook;
----------------UC-13---------------
select * from addressbook;
-----------------------------------------------------
select * from addressbook WHERE City = 'Vishakapatnam';
select * from addressbook WHERE State = 'Ap'
------------------------------------------------------
SELECT COUNT(City) as Number_of_City FROM addressbook;
SELECT COUNT(State) as Number_of_State FROM addressbook;
--------------------------------------------------------
SELECT * FROM addressbook ORDER BY City;
SELECT * FROM addressbook ORDER BY State;
------------------------------------------------------
SELECT COUNT(Type) as Number_of_Type from addressbook;