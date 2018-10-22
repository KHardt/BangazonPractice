/*

delete from Department;
drop table Department;
delete from Employee;
drop table Employee;
delete from TrainingProgram;
drop table TrainingProgram;
delete from EmployeeTraining;
drop table EmployeeTraining
delete from Computer;
drop table Computer
*/


create table Department (
id integer not null primary key autoincrement,
deptName text not null,
expenseBudget integer
);

create table Employee (
id integer not null primary key autoincrement,
firstName text not null,
lastName text not null,
deptId integer not null,
foreign key (deptId) references Department (id)
);

create table TrainingProgram (
id integer not null primary key autoincrement,
name varchar not null,
startDate datetime not null,
endDate datetime not null,
maxAttendees int not null
)
;

create table EmployeeTraining (
id integer not null primary key autoincrement,
EmployeeId integer not null,
ProgramId integer not null,
foreign key (EmployeeId) references Employee (Id),
foreign key (ProgramId) references TrainingProgram (Id)
);

create table Computer (
id integer not null primary key autoincrement,
purchaseDate datetime not null,
decommishDate datetime not null,
inRepair boolean,
EmployeeId integer not null, 
foreign key (EmployeeId) references Employee (Id)
);

create table EmployeeComputer (
id integer not null primary key autoincrement,
startDate datetime not null,
endDate datetime not null,
employeeId integer not null,
computerId integer not null,
foreign key (employeeId) references Employee (Id),
foreign key (computerId) references Computer (Id)
);


/*
create table Customer (
id integer not null primary key autoincrement,
firstName varchar not null,
lastName varchar not null,
createDate datetime not null,
isActive boolean
);

create table PaymentType (
id integer not null primary key autoincrement,
PaymentName varchar not null,
AccountNumber integer not null,
CustomerId integer not null,
foreign key (CustomerId) references Customer (Id)
);


create table ProductType (
id integer not null primary key autoincrement,
TypeName varchar not null
);

create table Product (
id integer not null primary key autoincrement,
Title varchar not null,
Price int not null,
CustomerId integer not null,
Description varchar not null,
QuantityinStock integer not null,
ProductType integer not null,
foreign key (CustomerId) references Customer (Id),
foreign key (ProductType) references ProductType (Id)
);


create table Orders (
id integer not null primary key autoincrement,
orderDate datetime not null,
PaymentType varchar not null,
CustomerId integer not null,
foreign key (PaymentType) references PaymentType (Id),
foreign key (CustomerId) references Customer (Id)
);

create table ProductOrder (
id integer not null primary key autoincrement,
orderId int not null,
productId int not null,
foreign key (orderId) references Orders (Id),
foreign key (productId) references Product (Id)
);
*/

