use Airlin_Management;
-- AIRPORT TABLE
CREATE TABLE AIRPORT ( 
AirportID INT PRIMARY KEY, 
AirportName VARCHAR(50),
AirportCode VARCHAR(20),
City VARCHAR(50),
Country VARCHAR(50),
Contact_No VARCHAR(20));

-- Insert airport values
INSERT INTO AIRPORT VALUES (1, 'King Abdulaziz Airport', 'JED' ,'Jeddah', 'Saudi Arabia', '+966 50 123 4567');
INSERT INTO AIRPORT VALUES (2, 'King Khalid Airport', 'RUH', 'Riyadh', 'Saudi Arabia', '+966 55 860 3426');
INSERT INTO AIRPORT VALUES (3, 'Prince Mohammad Airport', 'MED', 'Madinah', 'Saudi Arabia', '+966 05 311 9097');
INSERT INTO AIRPORT VALUES (4, 'Dubai International Airport', 'DXB', 'Dubai', 'UAE', '+971 4234 5666');
INSERT INTO AIRPORT VALUES (5, 'Hamad International Airport', 'DOH', 'Doha', 'Qatar', '+974 4411 2243');
INSERT INTO AIRPORT VALUES (6, 'Cairo International Airport', 'CAI',  'Cairo', 'Egypt', '+20 10 1324 7643');
INSERT INTO AIRPORT VALUES (7, 'Heathrow Airport', 'LHR', 'London', 'UK', '+33 7 12 98 44 11');
INSERT INTO AIRPORT VALUES (8, 'Charles de Gaulle Airport', 'CDG',  'Paris', 'France', '+33 6 12 34 56 78');
INSERT INTO AIRPORT VALUES (9, 'Istanbul Airport', 'IST', 'Istanbul', 'Turkey', '+90 532 123 45 67');
INSERT INTO AIRPORT VALUES (10, 'John F. Kennedy Airport', 'JFK',  'New York', 'USA', '+1 555 012 3456');
-- display Airport table
SELECT * FROM AIRPORT;

-- AIRCRAFT TABLE
CREATE TABLE AIRCRAFT (
Aircraft_No INT PRIMARY KEY,
AircraftModel VARCHAR(50),
AircraftState VARCHAR(50),
AirportID INT,
FOREIGN KEY (AirportID) REFERENCES AIRPORT(AirportID));
-- add Manufacturing column
ALTER TABLE AIRCRAFT ADD Manufacturing VARCHAR(100); 

-- Insert aircraft values
INSERT INTO AIRCRAFT VALUES (101, 'Boeing 737', 'Active', 1,  'Boeing');
INSERT INTO AIRCRAFT VALUES (102, 'Airbus A320','Active', 2, 'Airbus');
INSERT INTO AIRCRAFT VALUES (103, 'Boeing 777', 'Maintenance', 3, 'Boeing');
INSERT INTO AIRCRAFT VALUES (104, 'Airbus A350', 'Active', 4, 'Airbus');
INSERT INTO AIRCRAFT VALUES (105, 'Boeing 787', 'Active', 5, 'Boeing');
INSERT INTO AIRCRAFT VALUES (106, 'Airbus A330', 'Inactive', 6, 'Airbus');
INSERT INTO AIRCRAFT VALUES (107, 'Embraer E190', 'Active', 7, 'Embraer');
INSERT INTO AIRCRAFT VALUES (108, 'Boeing 747', 'Maintenance', 8, 'Boeing');
INSERT INTO AIRCRAFT VALUES (109, 'Airbus A380', 'Active', 9, 'Airbus');
INSERT INTO AIRCRAFT VALUES (110, 'Boeing 767', 'Active', 10, 'Boeing');
-- display aircraft table
SELECT * FROM AIRCRAFT;

-- PASSENGER TABLE
CREATE TABLE PASSENGER (
PassengerID INT PRIMARY KEY,
Passport VARCHAR(50) NOT NULL,
Email VARCHAR(200),
Phone_No VARCHAR(20) UNIQUE,
FirstName VARCHAR(100),
LastName VARCHAR(100));
-- add Gender column
ALTER TABLE PASSENGER ADD Gender VARCHAR(10); 

-- Insert Passenger value
INSERT INTO PASSENGER VALUES (1001, 'P12345', 'Sultan@gmail.com', '0501111111', 'Sultan', 'Ahmed', 'Male');
INSERT INTO PASSENGER VALUES (1002, 'P12346', 'Shouq@gmail.com', '0502222222', 'Shouq', 'Ahmed', 'Female');
INSERT INTO PASSENGER VALUES (1003, 'P12348', 'Elaf@gmail.com', '0504444444', 'Elaf', 'Ali', 'Female');
INSERT INTO PASSENGER VALUES (1004, 'P12347', 'fahad@gmail.com', '0503333333', 'Fahad', 'Saad', 'Male');
INSERT INTO PASSENGER VALUES (1005, 'P12349', 'khalid@gmail.com', '0505555555', 'Khalid', 'Salem', 'Male');
INSERT INTO PASSENGER VALUES (1006, 'P12350', 'farah@gmail.com', '0506666666', 'Farah', 'Hassan', 'Female');
INSERT INTO PASSENGER VALUES (1007, 'P12351', 'omar@gmail.com', '0507777777', 'Omar', 'Khaled', 'Male');
INSERT INTO PASSENGER VALUES (1008, 'P12352', 'reem@gmail.com', '0508888888', 'Reem', 'Nasser', 'Female');
INSERT INTO PASSENGER VALUES (1009, 'P12353', 'yousef@gmail.com', '0509999999', 'Yousef', 'Ali', 'Male');
INSERT INTO PASSENGER VALUES (1010, 'P12354', 'hanan@gmail.com', '0501010101', 'Hanan', 'Faisal', 'Female');
-- display Passenger table
SELECT * FROM PASSENGER;

-- FLIGHT TABLE
CREATE TABLE FLIGHT (
Flight_No INT PRIMARY KEY,
FlightDate DATE,
DepartureTime VARCHAR(50),
ArrivalTime VARCHAR(50),
DepartureCity VARCHAR(100),
ArrivalCity VARCHAR(100),
FlightState VARCHAR(100),
Aircraft_No INT,
FOREIGN KEY (Aircraft_No) REFERENCES AIRCRAFT (Aircraft_No));
-- add Duration column
ALTER TABLE FLIGHT ADD Duration VARCHAR(100); 

-- Insert flight value
INSERT INTO FLIGHT VALUES (001, '2026-06-01', '10:00 AM ', '11:35 AM' ,'Riyadh', 'Jeddah', 'Active', 101,  '2h');
INSERT INTO FLIGHT VALUES (002, '2026-06-02', '08:50 AM', '01:55 PM', 'Jeddah', 'Paris', 'Active', 102,  '6h'); 
INSERT INTO FLIGHT VALUES (003, '2026-06-03', '01:00 PM', '04:55 PM', 'Istanbul', 'Jeddah', 'Delayed',103, '4h');
INSERT INTO FLIGHT VALUES (004, '2026-06-04', '11:45 AM', '01:25 PM', 'Riyadh', 'Doha', 'Active', 104 ,'2h');
INSERT INTO FLIGHT VALUES (005, '2026-06-05', '10:20 PM', '11:25 PM', 'Jeddah', 'Madinah', 'Active', 105 ,'1h');
INSERT INTO FLIGHT VALUES (006, '2026-06-06', '07:45 AM', '12:25 PM', 'Dubai', 'London', 'Cancelled', 106 , '6h');
INSERT INTO FLIGHT VALUES (007, '2026-06-07', '06:15 AM', '12:45 PM', 'Jeddah', 'New York', 'Active', 107, '13h');
INSERT INTO FLIGHT VALUES (008, '2026-06-08', '05:20 PM', '08:35 PM', 'Cairo', 'London', 'Delayed', 108 ,'5h');
INSERT INTO FLIGHT VALUES (009, '2026-06-09', '01:35 AM', '07:45 AM', 'Doha', 'Paris', 'Active', 109 , '7h');
INSERT INTO FLIGHT VALUES (010, '2026-06-10', '09:55 PM', '11:20 PM', 'Madinah', 'Riyadh', 'Active', 110 ,'1h');
-- Update
UPDATE FLIGHT
SET FlightState = 'Delayed'
WHERE Flight_No = 4;
-- display flight table
SELECT * FROM FLIGHT;

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Gender VARCHAR(10),
Job VARCHAR(50),
Salary INT,
Phone_No VARCHAR(20) UNIQUE,
Street VARCHAR(100),
City VARCHAR(50),
EmployeeState VARCHAR(50),
ZipCode VARCHAR(20),
AirportID INT,
FOREIGN KEY (AirportID) REFERENCES AIRPORT(AirportID));

-- Insert employee values
INSERT INTO EMPLOYEE VALUES (01, 'Njood', 'Ali','Female', 'Manager', 7000, '+966 05 327 3422' , 'Airport Rd' , 'Riyadh', 'Riyadh' , '34567', 1);
INSERT INTO EMPLOYEE VALUES (02, 'Khalid', 'Ali','Male', 'Security', 7500, '+966 05 554 5325' , 'Tahlia St' , NULL , 'Makkah', '78901', 2);
INSERT INTO EMPLOYEE VALUES (03, 'Mohammad', 'jismail','Male', 'Pilot', 8000,'+966 05 333 4564' , 'King St', 'Jeddah', 'Makkah', '23456', 3);
INSERT INTO EMPLOYEE VALUES (04, 'Fahad', 'Saad','Male', 'Security', 6500, '+971 4111 5611', 'Olaya St', 'Riyadh', 'Riyadh', '45678', 4);
INSERT INTO EMPLOYEE VALUES (05, 'Noura', 'Hassan','Female', 'Engineer', 6000, '+974 0099 9775' , 'Corniche Rd', 'Jeddah', 'Makkah', '56789', 5);
INSERT INTO EMPLOYEE VALUES (06, 'Khalid', 'Salem', 'Male','Engineer',  9000, '+20 111 2200 291' ,'Prince St', NULL, 'Madinah', '67890', 6);
INSERT INTO EMPLOYEE VALUES (07, 'Omar', 'Khaled','Male','Co-Pilot', 8500, '+33 9771 11118',  'King Fahad Rd', 'Dammam', 'Eastern', '89012', 7);
INSERT INTO EMPLOYEE VALUES (08, 'Reem', 'Nasser','Female','Customer Service', 6200, '+33 1113 54440', 'Airport Rd', 'Abha', 'Asir', '90123', 8);
INSERT INTO EMPLOYEE VALUES (09, 'Yousef', 'Ali','Male','Security', 7300, '+90 0888 468000', 'Main St', 'Tabuk', 'Tabuk', '01234', 9);
INSERT INTO EMPLOYEE VALUES (010,'Hana', 'Faisal','Female', 'Administrator', 6800,'+1 3311 0999 653', 'King Abdulaziz Rd', 'Taif', 'Makkah', '12345', 10);
-- display employee table
SELECT * FROM EMPLOYEE;

-- MAINTENANCE TABLE
CREATE TABLE MAINTENANCE ( 
MaintenanceID INT PRIMARY KEY,
Cost DECIMAL(10,2),
State VARCHAR(50),
MaintenanceType VARCHAR(50),
MaintenanceDate DATE,
Aircraft_No INT,
FOREIGN KEY (Aircraft_No) REFERENCES AIRCRAFT(Aircraft_No));

-- Insert maintenance values
INSERT INTO MAINTENANCE VALUES (1, 5000.00 , 'Completed', 'Engine Check', '2026-01-10', 101);
INSERT INTO MAINTENANCE VALUES (2, 3000.00 , 'Pending', 'Seat Repair', '2026-01-12', 102);
INSERT INTO MAINTENANCE VALUES (3, 7000.00 , 'Completed', 'Oil Change', '2026-01-15', 103);
INSERT INTO MAINTENANCE VALUES (4, 4500.00 ,'In Progress', 'Tire Replacement', '2026-01-18', 104);
INSERT INTO MAINTENANCE VALUES (5, 6000.00 , 'Completed', 'System Update', '2026-01-20', 105);
INSERT INTO MAINTENANCE VALUES (6, 3500.00 ,'Pending', 'Window Repair', '2026-01-22', 106);
INSERT INTO MAINTENANCE VALUES (7, 8000.00, 'Completed', 'Full Inspection', '2026-01-25', 107);
INSERT INTO MAINTENANCE VALUES (8, 5500.00 , 'In Progress', 'Engine Repair', '2026-01-27', 108);
INSERT INTO MAINTENANCE VALUES (9, 4000.00 ,'Completed', 'Brake Check', '2026-01-29', 109);
INSERT INTO MAINTENANCE VALUES (10, 6500.00 ,'Pending', 'Electrical Repair', '2026-02-01', 110);
-- display maintenance table
SELECT * FROM MAINTENANCE;

-- SEAT TABLE
CREATE TABLE SEAT (
Seat_No VARCHAR(10) PRIMARY KEY,
SeatState VARCHAR(50),
SeatClass VARCHAR(50),
SmartScreen VARCHAR(10),
SeatPosition VARCHAR(50),
Aircraft_No INT,
FOREIGN KEY (Aircraft_No) REFERENCES AIRCRAFT(Aircraft_No));

-- Insert seat values
INSERT INTO SEAT VALUES ('12A', 'Available', 'Economy', 'Yes', 'Window', 101);
INSERT INTO SEAT VALUES ('3B', 'Reserved', 'Business', 'Yes', 'Middle', 102);
INSERT INTO SEAT VALUES ('15C', 'Available', 'Economy', 'No', 'Aisle', 103);
INSERT INTO SEAT VALUES ('1A', 'Reserved', 'First Class', 'Yes', 'Window', 104);
INSERT INTO SEAT VALUES ('18B', 'Available', 'Economy', 'No', 'Middle', 105);
INSERT INTO SEAT VALUES ('5C', 'Reserved', 'Business', 'Yes', 'Aisle', 106);
INSERT INTO SEAT VALUES ('20A', 'Available', 'Economy', 'No', 'Window', 107);
INSERT INTO SEAT VALUES ('2D', 'Reserved', 'First Class', 'Yes', 'Middle', 108);
INSERT INTO SEAT VALUES ('6F', 'Available', 'Business', 'Yes', 'Aisle', 109);
INSERT INTO SEAT VALUES ('22A', 'Available', 'Economy', 'No', 'Window', 110);
-- display seat table
SELECT * FROM SEAT;

-- PAYMENT TABLE
CREATE TABLE PAYMENT (
PaymentID INT PRIMARY KEY,
PaymentMethod VARCHAR(50),
Amount DECIMAL(10,2),
PaymentDate DATE);

-- Insert payment value 
INSERT INTO PAYMENT VALUES (1, 'Cash', 900.00, '2026-05-01');
INSERT INTO PAYMENT VALUES (2, 'Cash', 900.00, '2026-05-02');
INSERT INTO PAYMENT VALUES (3, 'Apple Pay', 600.00, '2026-05-03');
INSERT INTO PAYMENT VALUES (4, 'Apple Pay', 300.00, '2026-05-04');
INSERT INTO PAYMENT VALUES (5, 'Visa', 1500.00, '2026-05-05');
INSERT INTO PAYMENT VALUES (6, 'Mada', 750.00, '2026-05-06');
INSERT INTO PAYMENT VALUES (7, 'MasterCard', 2200.00, '2026-05-07');
INSERT INTO PAYMENT VALUES (8, 'Cash', 450.00, '2026-05-08');
INSERT INTO PAYMENT VALUES (9, 'Visa', 980.00, '2026-05-09');
INSERT INTO PAYMENT VALUES (10, 'Apple Pay', 1750.00, '2026-05-10');
-- display payment table
SELECT * FROM PAYMENT;

-- TICKET TABLE
CREATE TABLE TICKET (
TicketID INT PRIMARY KEY,
TicketState VARCHAR(50),
Price INT,
Flight_No INT,
PassengerID INT,
PaymentID INT,
Seat_No VARCHAR(10),
FOREIGN KEY (Flight_No) REFERENCES FLIGHT(Flight_No),
FOREIGN KEY (PassengerID) REFERENCES PASSENGER(PassengerID),
FOREIGN KEY (PaymentID) REFERENCES PAYMENT(PaymentID),
FOREIGN KEY (Seat_No) REFERENCES SEAT(Seat_No));
-- add Smoking column
ALTER TABLE TICKET ADD Smoking VARCHAR(5); 
-- Modify 
ALTER TABLE TICKET MODIFY Price DECIMAL(11,2);

-- Insert ticket value
INSERT INTO TICKET VALUES (1, 'Confirmed', 450.00, 1, 1001, 1,'12A', 'NO');
INSERT INTO TICKET VALUES (2, 'Confirmed', 1250.00, 2, 1002, 2,'3B', 'NO');
INSERT INTO TICKET VALUES (3, 'Pending', 980.00, 3, 1003, 3,'15C', 'NO');
INSERT INTO TICKET VALUES (4, 'Confirmed', 3200.00, 4, 1004, 4,'1A', 'NO');
INSERT INTO TICKET VALUES (5, 'Cancelled', 760.00, 5, 1005, 5,'18B', 'NO');
INSERT INTO TICKET VALUES (6, 'Confirmed', 540.00, 6, 1006, 6,'5C', 'NO');
INSERT INTO TICKET VALUES (7, 'Pending', 2100.00, 7, 1007, 7,'20A', 'NO');
INSERT INTO TICKET VALUES (8, 'Confirmed', 670.00, 8, 1008, 8,'2D', 'NO');
INSERT INTO TICKET VALUES (9, 'Confirmed', 1850.00, 9, 1009, 9,'6F', 'NO');
INSERT INTO TICKET VALUES (10, 'Cancelled', 430.00, 10, 1010, 10,'22A', 'NO');
-- display ticket table
SELECT * FROM TICKET;

-- select with Condition
SELECT * FROM SEAT
WHERE SeatState = 'Available';

SELECT * FROM AIRCRAFT
WHERE AircraftState = 'Maintenance';

-- distinct
SELECT DISTINCT PaymentMethod
FROM PAYMENT;

-- select many column
SELECT FirstName, LastName, Passport
FROM PASSENGER;

-- between and
SELECT *
FROM EMPLOYEE
WHERE Salary BETWEEN 6000 AND 8000;

-- select management employee and polit 
SELECT *
FROM EMPLOYEE
WHERE Job IN ('Manager', 'Pilot');

-- select a column and sum its value with
SELECT PaymentID,Amount, Amount + 200 AS TotalWithTax
FROM PAYMENT;

-- select all data and sorted in descending order by cost.
SELECT *
FROM MAINTENANCE
ORDER BY Cost DESC;

-- Sum all aircraft maintenance costs and display it in TotalCost column.
SELECT SUM(Cost) AS TotalCost
FROM MAINTENANCE;

-- average salary of employees and display it in AverageSalary column.
SELECT AVG(Salary) AS AverageSalary
FROM EMPLOYEE;
--  maximum ticket price 
SELECT MAX(Price) AS HighestTicketPrice
FROM TICKET;
-- minimum aircraft maintenance cost and display it in LowestMaintenanceCost column.
SELECT MIN(Cost) AS LowestMaintenanceCost
FROM MAINTENANCE;
-- Display the aircraft whose status is active.
SELECT COUNT(*) AS ActiveAircraft
FROM AIRCRAFT
WHERE AircraftState = 'Active';
-- select Job column with the number of employees who share the same job from the Employee table and display it.
SELECT Job, COUNT(*) AS NumberOfEmployee
FROM EMPLOYEE
GROUP BY Job;
-- Sum with group by with Condition.
SELECT Job, SUM(Salary) AS TotalSalaryBudget
FROM EMPLOYEE
GROUP BY Job
HAVING SUM(Salary) > 7000;
-- Use Inner join
SELECT AIRPORT.AirportName AS AirportName, AIRCRAFT.Aircraft_No, AIRCRAFT.AircraftModel
FROM AIRPORT
INNER JOIN AIRCRAFT ON AIRPORT.AirportID = AIRCRAFT.AirportID;
-- delete tuple by ID (primary key)
DELETE FROM MAINTENANCE 
WHERE MaintenanceID = 4;
SELECT * FROM MAINTENANCE ;
-- Select the names that start with “S” using LIKE.
SELECT * FROM PASSENGER
WHERE FirstName like 'S%';
-- Display employees whose city is null.
SELECT * FROM EMPLOYEE
WHERE City IS NULL;
-- Use select in select
SELECT PassengerID, FirstName, LastName, Email
FROM PASSENGER
WHERE PassengerID IN (
    SELECT PassengerID
    FROM TICKET
    WHERE PassengerID = 1002 );
-- Cartesian Product.
SELECT DISTINCT FLIGHT.Flight_No, FLIGHT.DepartureCity, FLIGHT.ArrivalCity, SEAT.SeatClass
FROM FLIGHT
CROSS JOIN SEAT;