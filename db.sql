Create table candidate(
CandID int primary key,
First_Name varchar(20),
Last_Name varchar(20),
Contact_Number int,
Address varchar(30),
Education varchar(30),
WorkExp varchar(30),
Skills varchar(20),
ApplyPositionId int, constraint fk_ApplyPositionId foreign key(ApplyPositionId) references JobDetails(PositionID)
On delete set null
on update cascade
);


Create table JobDetails(
PositionID int primary key,
Title varchar(20),
Description varchar(50),
Salary varchar(20)
);