--1
create database LMT_University

--2
create schema enrol


--Address
CREATE TABLE [dbo].[Address] (
AddressId    int primary key identity(1,1)  NOT NULL ,
Street_Address    varchar(50)   NULL, 
City     varchar(30)  NOT NULL,
State      varchar(30)      NULL,
Postal_Code      varchar(30)  NULL,
Country  varchar(30) NOT NULL,
Inserted_On date          NOT NULL
) 

--Insert
insert into [LMT_University].[dbo].[Address]  (StreetAddress,City,State,PostalCode,Country,InsertedOn) values 
('5 Schurz Lane',' Grybów', NULL ,'33-330', 'Poland', '2020-09-30'),
('628 Waubesa Drive', 'Jinsheng', NULL, NULL, 'China', '2020-09-30'),
('44135 Northfield Way', 'Nowy Dwór Mazowiecki', NULL, '05-160', 'Poland', '2020-09-30'),
('335 Bellgrove Road', 'Gaoqiao', NULL, NULL ,'China' ,'2020-09-30'),
('28 Victoria Junction', 'Bukovec', NULL ,'739 84' ,'Czech Republic', '2020-09-30'),
('6 Stuart Road', 'Wushan' ,NULL ,NULL, 'China', '2020-09-30'),
('730 Barby Street', 'Zhengchang', NULL, NULL, 'China', '2020-09-30'),
('22742 Schiller Street' ,'Sumurwaru' ,NULL ,NULL ,'Indonesia', '2020-09-30'),
('31 Elka Junction', 'Cigembong', NULL, NULL, 'Indonesia', '2020-09-30'),
('5 Kenwood Circle', 'Davao', NULL ,'8000' ,'Philippines', '2020-09-30'),
('99 Bunker Hill Crossing', 'Zarasai' ,NULL ,'32001' ,'Lithuania' ,'2020-09-30'),
('5 Farragut Center', 'Jaromerice', NULL ,'569 44', 'Czech Republic', '2020-09-30'),
('25 Lerdahl Street' ,'Nanshi' ,NULL, NULL, 'China' ,'2020-09-30'),
('918 Bonner Way Phayakkhaphum' ,'Phisai' ,NULL ,'44110', 'Thailand', '2020-09-30'),
('9 West Alley' ,'Sempu', NULL, NULL, 'Indonesia',' 2020-09-30'),
('234 Hagan Lane' ,'Rennes', 'Bretagne', '35033' ,'France', '2020-09-30'),
('33942 Eagle Crest Trail', 'Oliveiras', 'Porto', '4745-235', 'Portugal', '2020-09-30'),
('20791 Hermina Way', 'B?o L?c' ,NULL, NULL ,'Vietnam', '2020-09-30'),
('86 Lake View Way',' Marsa Alam', NULL, NULL, 'Egypt', '2020-09-30'),
('19732 Burning Wood Parkway' ,'Piteå ','Norrbotten' ,'944 73' ,'Sweden', '2020-09-30'),
('9320 Oak Valley Road', 'Rathangani', NULL, 'A45', 'Ireland', '2020-09-30'),
('2638 Waubesa Circle', 'Honda', NULL, '732048', 'Colombia' ,'2020-09-30'),
('6999 Monument Center', 'Cortes', NULL, '6341' ,'Philippines' ,'2020-09-30'),
('1 Warbler Hill', 'Proletar' ,NULL ,NULL ,'Tajikistan' ,'2020-09-30'),
('1311 Crowley Street', 'Baghlan', NULL ,NULL, 'Afghanistan', '2020-09-30'),
('19 Walton Way', 'Öldziyt' ,NULL ,NULL ,'Mongolia' ,'2020-09-30'),
('1 Glacier Hill', 'Cergy-Pontoise', 'Île-de-France', '95304', 'France', '2020-09-30'),
('5094 Gateway Way', 'Živinice' ,NULL, NULL, 'Bosnia and Herzegovina', '2020-09-30'),
('2 Roth Pass', 'Tuatuka', NULL, NULL, 'Indonesia', '2020-09-30'),
('89531 Northview Road', 'Ganyi', NULL, NULL, 'China', '2020-09-30');

--DEPARTMENT
CREATE TABLE [LMT_University].[dbo].[Department] 
(
    DepartmentID int primary key identity(1,1) NOT NULL,
    Department_Name    varchar(50)  NOT NULL, 
	Department_Description     varchar(100)   NULL,
	Department_Capacity      varchar(30)  NOT NULL,
	Inserted_On date          NOT NULL
);

--Insert
insert into [LMT_University].[dbo].[Department]  (Department_Name,Department_Description,Department_Capacity,Inserted_On) values 

('IT', 'Information Technology', '60', '2020-09-30'),
('EE', 'Electrical Engineering', '120', '2020-09-30'),
('CSE', 'Computer Science Engineering', '140', '2020-09-30'),
('ME', 'Mechanical Engineering', '110', '2020-09-30'),
('ECE', 'Electronic and Communication Engineering', '80', '2020-09-30'),
('AEIE', 'Applied Electronics and Instrumentation Engineering', '50', '2020-09-30'),

('MBA', 'Business Management', '120', '2020-09-30'),
('PHARM', 'Pharmacy', '60', '2020-09-30'),
('CE', 'Computer Engineering', '140', '2020-09-30'),
('AUTO', 'Automobile Engineering', '110', '2020-09-30'),
('ABM', 'AutoMotive Business', '80', '2020-09-30'),
('ARCH', 'Architecture', '120', '2020-09-30'),

('PGL', 'Paralegal', '120', '2020-09-30'),
('RAPP', 'Research Analytics', '60', '2020-09-30'),
('BDAT', 'Big Data Analytics', '140', '2020-09-30'),
('PRGM', 'Project Management', '110', '2020-09-30'),
('BSC', 'Nursing', '120', '2020-09-30'),
('DIET', 'Nutrients and Dietics', '50', '2020-09-30'),

('ACPT', 'Accupunture', '60', '2020-09-30'),
('BIOT', 'Biotechnology Health', '120', '2020-09-30'),
('BUSG', 'Business', '140', '2020-09-30'),
('CVTY', 'Civil Engineering', '110', '2020-09-30'),
('CMPA', 'Computer Programming and Analysis', '120', '2020-09-30'),
('DNTH', 'Dental Hygiene', '50', '2020-09-30'),

('EVNT', 'Event Management', '120', '2020-09-30'),
('GAST', 'Gas Technician', '60', '2020-09-30'),
('INDC', 'Interior Decorating', '140', '2020-09-30'),
('MASG', 'Massage Therapy', '110', '2020-09-30'),
('OPTI', 'Opticianry', '120', '2020-09-30'),
('PARA', 'Paramedic', '50', '2020-09-30')

--Lecturer
CREATE TABLE [LMT_University].[dbo].[Lecturer] 
(
    LecturerID int primary key identity(1,1) NOT NULL,
    Lecturer_Name    varchar(100)  NOT NULL, 
	Lecturer_Highest_Qualification     varchar(100)   NULL,
	Lecturer_Age     varchar(50)  NOT NULL,
	Department_ID int NOT NULL,
	Inserted_On date   NULL
);

--Insert
insert into [LMT_University].[dbo].[Lecturer]  (Lecturer_Name,Lecturer_Highest_Qualification,Lecturer_Age,Department_ID,Inserted_On) values 
('Peder Bernaldez' ,'M.Tech', '2010-10-10', '6', '2020-09-30'),
('Emile Adolthine', 'PhD', '2010-04-04', '5' ,'2020-09-30'),
('Titos Iorizzi', 'M.Tech ','2012-04-09 ','4 ','2020-09-30'),
('Ferris Falck', 'MSC' ,'2011-05-05', '3', '2020-09-30'),
('Georgie McIlwraith', 'M.Tech' ,'2017-05-08', '2' ,'2020-09-30'),
('Karlen Kearn', 'MSC' ,'2019-03-03', '1', '2020-09-30'),
('Axe Whistlecroft', 'MCA', '2019-03-03', '6', '2020-09-30'),
('Drucie Bazek' ,'PhD' ,'2019-04-01' ,'5', '2020-09-30'),
('Antony Gamlin', 'M.Tech', '2019-04-01', '4', '2020-09-30'),
('Alexina Moncaster', 'MBA', '2019-04-01', '3', '2020-09-30'),
('Milzie Kabos', 'MCA' ,'2019-03-03', '2', '2020-09-30'),
('Arlene Glendza', 'MS', '2019-03-03', '1', '2020-09-30'),
('Kirby Kabisch', 'M.Tech', '2019-04-01', '1', '2020-09-30'),
('Selma Eliyahu', 'PhD', '2019-04-01', '2', '2020-09-30'),
('Ilysa Chooter', 'M.Tech', '2019-04-01', '3', '2020-09-30'),
('Rozalie Pennycord', 'MSC', '2010-10-10', '4', '2020-09-30'),
('Dacey Glidder', 'M.Tech', '2010-04-04', '5', '2020-09-30'),
('Claretta Diaper', 'MSC', '2012-04-09', '6', '2020-09-30'),
('Kalil Pendleton', 'MCA', '2011-05-05', '6' ,'2020-09-30'),
('Trudey Brech', 'PhD', '2011-10-05', '5', '2020-09-30'),
('Gypsy Ambrosini', 'M.Tech', '2011-03-30', '4', '2020-09-30'),
('Lauree Ribbon', 'MBA', '2013-04-04', '3','2020-09-30'),
('Hugo Valois', 'MCA','2012-04-29', '2', '2020-09-30'),
('Perren Chetter', 'MS', '2018-05-03', '1', '2020-09-30'),
('Fawn Coffelt', 'M.Tech', '2020-02-26', '1' ,'2020-09-30'),
('Terrie Golby', 'PhD', '2020-02-26', '2', '2020-09-30'),
('Jeanette Ciraldo', 'M.Tech', '2020-03-26', '3', '2020-09-30'),
('Elfrieda Elijahu', 'MSC', '2020-03-26', '4', '2020-09-30'),
('Guthry Blaes', 'M.Tech', '2020-03-26', '5' ,'2020-09-30'),
('Richy Saice', 'MSC', '2020-02-26', '6', '2020-09-30')


--Students
CREATE TABLE [LMT_University].[dbo].[Students] (
StudentId  int primary key identity(1,1)  NOT NULL,
StudentFirstName varchar(100) NOT NULL,
StudentLastName varchar(100) NULL,
StudentDOB date NOT NULL,
StudentMobile varchar(20) NULL,
StudentRollNo int NOT NULL,
Department_ID int NOT NULL,
AddressID int NOT NULL,
Inserted_On date   NOT NULL
) 


--Insert
insert into [LMT_University].[dbo].[Students](StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,Department_ID,AddressID,Inserted_On)
values
('Karlotta',' Garraway', '1997-07-06', '2192431615', '2', '3', '24', '2020-10-01'),
('Jerry',' Stutte', '1996-12-18', '4125425783', '3' ,'1', '17', '2020-10-01'),
('Yehudit',' Rahill', '1995-01-15', '9939485406', '4', '2' ,'29', '2020-10-01'),
('Cele',' Crosetto', '1998-11-24', '3622733725', '5', '3', '16', '2020-10-01'),
('Hazlett',' Mowsdale', '1995-04-09', '1482883476', '6' ,'4', '23', '2020-10-01'),
('Carlyn',' Marks', '1996-12-27', '6129154080', '7', '5', '20', '2020-10-01'),
('Ellis',' Boatman', '1997-04-29', '8269707118', '8' ,'6' ,'7', '2020-10-01'),
('Florina',' Boyack', '1997-08-03', '9623352863', '9', '3' ,'14', '2020-10-01'),
('Borg',' Innett', '1997-09-03', '5256034960', '10' ,'1' ,'19', '2020-10-01'),
('Sayres',' Jennings', '1996-05-12', '8675076454', '11', '4', '27', '2020-10-01'),
('Jarid',' Sprull', '1998-11-02', '1391270091', '12', '2', '6' ,'2020-10-01'),
('Elvera',' Bannard', '1996-09-07', '7897232539', '13' ,'4', '24', '2020-10-01'),
('Ody',' Inggall', '1995-03-05', '6094734260', '14', '5','25', '2020-10-01'),
('Curcio',' McWhan', '1996-07-29', '2394865847', '15', '6', '11', '2020-10-01'),
('Connie',' Sinnie', '1995-07-19', '1473936221', '16' ,'6', '23' ,'2020-10-01'),
('Auroora',' Nel' ,'1996-09-05', '2216400391', '17', '3', '14', '2020-10-01'),
('Wendall',' Rosendale', '1999-12-30', '1818120249', '18', '3', '28','2020-10-01'),
('Hadley',' Bradbury', '1996-08-16', '6518067697', '19', '1', '10','2020-10-01'),
('Celine',' Smales', '1999-07-11', '7106508130', '20', '2', '10', '2020-10-01'),
('Jesselyn',' Stevenson', '1998-05-16', '9231672206',' 21',' 2',' 22',' 2020-10-01'),
('Corinna',' Pinkney',' 1998-01-16',' 8323630067', '22',' 5',' 29',' 2020-10-01'),
('Orelle',' Adamthwaite',' 1997-07-26',' 2539126766',' 23',' 3',' 17',' 2020-10-01'),
('Howie',' Seaman',' 1997-12-01',' 9888259627',' 24',' 2',' 4',' 2020-10-01'),
('Sibyl',' Corey',' 1996-07-18',' 4493239590',' 25',' 5',' 11',' 2020-10-01'),
('Ruperta',' Peaker ','1999-05-22 ','5124781263 ','26 ','5 ','4 ','2020-10-01'),
('Delmer',' Roughey',' 1995-04-21',' 4175314364',' 27',' 3',' 22',' 2020-10-01'),
('Gifford',' OScannill ','1996-10-31 ','3134783726 ','28 ','4 ','22' ,'2020-10-01'),
('Hedy',' OHone',' 1998-03-29',' 7316228047',' 29',' 2',' 17',' 2020-10-01'),
('Shalna',' Hyde-Chambers ','1999-11-23 ','7455116160 ','30 ','5 ','6 ','2020-10-01'),
('Ferdie', 'Di Napoli',' 1995-01-17',' 1905908693',' 31',' 4',' 30',' 2020-10-01'),
('Piper',' Giacomuzzo ','1998-09-14 ','5499340503 ','32 ','6 ','4 ','2020-10-01'),
('Gerhardt',' Schruurs',' 1999-11-18',' 8197494894', '33',' 3',' 1',' 2020-10-01'),
('Mellicent',' Buncher ','1996-10-03 ','4584525312 ','34 ','5 ','28 ','2020-10-01'),
('Corette',' Demead',' 1997-09-17',' 4909862137',' 35',' 5',' 17',' 2020-10-01'),
('Jorgan',' Barson ','1997-05-01 ','6022309183 ','36' ,'1 ','21 ','2020-10-01'),
('Koral',' Bowen', ' 1998-05-12',' 4198817454',' 37',' 4',' 3',' 2020-10-01'),
('Allissa',' Kitter',' 1998-08-17',' 7328676920',' 38',' 5',' 7',' 2020-10-01'),
('Townsend',' Doughtery',' 1998-04-13',' 2639777958',' 39',' 4',' 7',' 2020-10-01'),
('Yolane',' Geratt',' 1998-06-10',' 2069585951',' 40',' 6',' 17',' 2020-10-01'),
('Chrystel',' Allwood',' 1996-09-07',' 6958461692',' 41',' 3',' 25',' 2020-10-01'),
('Dyana',' Clutterbuck',' 1997-09-22',' 5842483886',' 42',' 1',' 1',' 2020-10-01'),
('Nikki',' Edy',' 1999-01-10',' 5096155315',' 43',' 6',' 25','2020-10-01'),
('Hendrik',' Surr',' 1997-04-05',' 2021255732',' 44',' 5',' 11','2020-10-01'),
('Marta',' Bosch',' 1998-09-28',' 4075136713',' 45',' 6',' 5',' 2020-10-01'),
('Garrik ','Pell',' 1999-04-14',' 3071057649',' 46',' 6',' 7',' 2020-10-01'),
('Stormi',' Colbron',' 1998-10-21', '9968113654',' 47',' 3',' 28',' 2020-10-01'),
('Angelique',' Iacivelli',' 1995-06-07',' 9518365081',' 48',' 5',' 7',' 2020-10-01'),
('Zack',' Hefforde',' 1999-07-25',' 5455693035',' 49',' 1',' 29',' 2020-10-01'),
('Gusella',' Pettiford',' 1999-08-23',' 2425172721',' 50',' 4',' 3',' 2020-10-01')


--9a.List all the Student information from the Student table.
select * from [LMT_University].[dbo].Students

--9b.List all the Department information from the Department table.
select * from [LMT_University].[dbo].Department

--9c.List all the Lecturer information from the Lecturer table.
select * from [LMT_University].[dbo].Lecturer

--9d. List all the Address information from the Address table.
select * from [LMT_University].[dbo].Address

--9e.List the StudentFullName, StudentDOB, StudentMobile from Student 
select concat(StudentFirstName,StudentLastName) as StudentFullName, StudentDOB,StudentMobile from Students

--9f.List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile
from Student StudentRollNo in AddressID 7.
select StudentId,StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo from Students where AddressID=7;

--9g. List all the student information whose first name is start with 'B'
select * from Students where StudentFirstName LIKE 'B%'

--9h. List all the student information whose first name is start and end with 'A'
select * from Students where StudentFirstName LIKE 'A%A'

--9i Count the number of Student from Student table whose DepartmentID 6.
select count(*) from Students where Department_ID = 6;

--9j List all the StudentFullName, StudentAge, StudentMobile from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]
select concat(StudentFirstName,StudentLastName) as StudentFullName, YEAR(GETDATE())-YEAR(StudentDOB) as Age, StudentMobile from Students

--9K List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]
select concat(StudentFirstName,StudentLastName) as StudentFullName, YEAR(GETDATE())-YEAR(StudentDOB) as Age, StudentMobile from Students 
WHERE (YEAR(GETDATE())-YEAR(StudentDOB))>23;

--9L List all the StudentFullName, StudentAge, StudentMobile whose Age is either 21 or 23 from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName][StudentAge= Current date – DOB (in Years)]
select concat(StudentFirstName,StudentLastName) as StudentFullName, YEAR(GETDATE())-YEAR(StudentDOB) as Age, StudentMobile from Students 
WHERE (YEAR(GETDATE())-YEAR(StudentDOB))=21 OR  (YEAR(GETDATE())-YEAR(StudentDOB))=23

--9M List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer
select LecturerID,Lecturer_Name,Lecturer_Highest_Qualification,Lecturer_Age from Lecturer

--9N List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer whose HighestQualification is either “MS” or “PhD”
select LecturerID,Lecturer_Name,Lecturer_Highest_Qualification,Lecturer_Age from Lecturer 
where Lecturer_Highest_Qualification = 'MS' OR Lecturer_Highest_Qualification = 'PhD'

--9O List all the lecturer information who belongs to DepartmentID 2
select * from Lecturer where Department_ID=2

--9P List all the lecturer information whose name end with “R”.
select * from Lecturer where Lecturer_Name LIKE '%r'

--9Q List all the lecturer information whose name either start or end with “E”
select * from Lecturer where Lecturer_Name LIKE 'e%e'

--9R List all the lecturer name is in capital letter
select UPPER(Lecturer_Name)from Lecturer 

--9S Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.
select LEFT(Lecturer_Name,5),LecturerID,Lecturer_Highest_Qualification from Lecturer

--9T List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year) [LecturerAge= Current Date – LecturerAge)] (in year).
select LecturerID,Lecturer_Name,Lecturer_Highest_Qualification,(YEAR(GETDATE())-YEAR(Lecturer_Age)) AS LecturerAge from Lecturer

--9U List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.
select Department_ID,Department_Name,Department_Description,Department_Capacity from Department

--9V List all the Department information who’s DepartmentName is “ECE”.
select * from Department where Department_Name='ECE'

--9W List all DepartmentName, DepartmentDescription, DepartmentCapacity from Department whose capacity is greater than 60.
select Department_Name,Department_Capacity,Department_Description from Department where Department_Capacity>60

--9X List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.
Select AddressID,Street_Address,City,State,Postal_Code,Country from Address

--9Y List all AddressID, StreetAddress, City, State, PostalCode, Country from Address who belongs to “Poland” country.
Select AddressID,Street_Address,City,State,Postal_Code,Country from Address where Country='Poland'

--9Z List all the Address information whose state is null.
select * from Address where State IS NULL

--9aa List all the Address information whose PostalCode is not null.
select * from Address where Postal_Code IS NOT NULL

--9bb . List all the Address information whose City name is "Honda" and Country name is "Colombia"
select * from Address where City='Honda' AND Country='Colombia'

--10a List unique DOB from Student
SELECT DISTINCT StudentDOB
FROM Students;

--10b List unique DepartmentName from Department
SELECT DISTINCT Department_Name
FROM Department;

--10c List unique Country name from Address
SELECT DISTINCT Country
FROM Address;

--10d List unique State name from Address
SELECT DISTINCT City
FROM Address;

--10e List unique City name from Address
SELECT DISTINCT State 
FROM Address;

--10f List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService from Lecturer [LecturerYearService= Current Date – LecturerAge] (in year).
select LecturerID,Lecturer_Name,Lecturer_Highest_Qualification,YEAR(GETDATE())-YEAR(Lecturer_Age) as LecturerYearService from Lecturer

--10g List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" elseif LecturerYearService>=5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".
SELECT LecturerID,Lecturer_Name,Lecturer_Highest_Qualification,
CASE
    WHEN YEAR(GETDATE())-YEAR(Lecturer_Age) < 5 THEN 'Begining Level Experience'
    WHEN YEAR(GETDATE())-YEAR(Lecturer_Age) >= 5 THEN 'Mid Level experience'
    ELSE 'Experienced'
END AS LecturerType 
FROM Lecturer;

--11(a). Display all Student and their Department Information based on the relationship.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	D.[Department_ID],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity]
From [dbo].[Students] S
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID


--11 (b) Display all Student and their Address Information based on the relationship.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	A.[Street_Address],
	A.[City],
	A.[State],
	A.[Country],
	A.[Postal_Code]
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID


-- 11(c) Display all Department and their Lecturer Information based on the relationship.

Select 
	D.[Department_ID],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity],
	L.[LecturerID],
	L.[Lecturer_Name],
	L.[Lecturer_Age],
	L.[Lecturer_Highest_Qualification]
From [dbo].[Department] D
left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID


-- 11(d) Display all Student with their Department with Lecturer Information based on the relationship.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	D.[Department_ID],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity],
	L.[LecturerID],
	L.[Lecturer_Name],
	L.[Lecturer_Age],
	L.[Lecturer_Highest_Qualification]
From [dbo].[Students] S
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID
Left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID


-- 11(e) Display all Student with their Address and Department Information based on the relationship.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	A.[Street_Address],
	A.[City],
	A.[State],
	A.[Country],
	A.[Postal_Code],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity]
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID

--11 (f).	Display all Student with Address, Department and Lecturer Information based on the relationship.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	A.[Street_Address],
	A.[City],
	A.[State],
	A.[Country],
	A.[Postal_Code],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity],
	L.[LecturerID],
	L.[Lecturer_Name],
	L.[Lecturer_Age],
	L.[Lecturer_Highest_Qualification]
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID
Left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID


--11(g) Display all Student with Address, Department and Lecturer Information who belongs to either “ME” or “ECE” department.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	A.[Street_Address],
	A.[City],
	A.[State],
	A.[Country],
	A.[Postal_Code],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity],
	L.[LecturerID],
	L.[Lecturer_Name],
	L.[Lecturer_Age],
	L.[Lecturer_Highest_Qualification]
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID
Left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID

WHERE D.[Department_Name] = 'ME' --OR D.[Department_Name] = 'ECE'

--11(h)	Display Student with Department and their Lecturer information based on the LecturerHighestQualification either “MS” or “PhD”.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[Inserted_On],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity],
	L.[LecturerID],
	L.[Lecturer_Name],
	L.[Lecturer_Age],
	L.[Lecturer_Highest_Qualification]
	From [dbo].[Students] S
Left join [dbo].[Department] D on S.[Department_ID] =D.[Department_ID]
Left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID

WHERE L.[Lecturer_Highest_Qualification] = 'MS' OR L.[Lecturer_Highest_Qualification] = 'PhD'
Order By S.[StudentID]


--11(i) Display Student with Department and Address Information, where student belongs to “Thailand” country.

Select 
	S.[StudentID], 
	S.[StudentFirstName], 
	S.[StudentLastName], 
	S.[StudentDOB], 
	S.[StudentMobile], 
	S.[StudentRollNo], 
	S.[AddressID],
	S.[Inserted_On],
	A.[Street_Address],
	A.[City],
	A.[State],
	A.[Country],
	A.[Postal_Code],
	D.[Department_Name],
	D.[Department_Description],
	D.[Department_Capacity]
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID

WHERE A.[Country] = 'Thailand'

--11(j) Display Count of Student, Department wise.

Select 
	D.[Department_Name],
	COUNT(S.StudentID) AS StudentCount
From [dbo].[Students] S
Left join [dbo].[Department] D on S.Department_ID=D.Department_ID
Group By D.[Department_Name]
Order By D.[Department_Name]

--11(k) Display Count of Lecturer, Department wise.

Select 
	D.[Department_Name],
	COUNT(L.[Lecturer_Name]) AS LecturerCount
From [dbo].[Department] D
Left join [dbo].[Lecturer] L on D.Department_ID=L.Department_ID
Group By D.[Department_Name]
Order By D.[Department_Name]

--11(l) Display Count of Student, Country wise.

Select 
	A.[Country],
	COUNT(S.StudentID) AS StudentCount
	From [dbo].[Students] S
Left join [dbo].[Address] A on S.AddressID=A.AddressID
Group By A.[Country]
Order By A.[Country]

--12a.	Create new table StudCopy and copy all records from Student table.

Select * into StudCopy from Students;

--12b.	Create a new table DeptCopy and copy only the schema from Department table.

Select * into DeptCopy from Department where 1 = 0;

--12c.	Create a new table DepartmentCopy and copy all records from Department table

Select * into DepartmentCopy from Department;

--12d.	Create a new table AddrCopy and copy only the schema from Address table.

Select * into AddrCopy from Address where 1 = 0;

--12e.	Create a new table AddrCopy and copy all the records from Address table.

Select * into AddressCopy from Address;

--12f.	Create a new table LecturerCopy and copy all the records from Lecturer table.
Select * into LecturerCopy from Lecturer;

--13a.	Delete all the records from LecturerCopy table.

Delete from LecturerCopy;

--13b.	Delete all the student information for the students who belong to “IT” department

Delete StudCopy
From [dbo].[StudCopy] S
left join [dbo].[DepartmentCopy] D on S.Department_ID=D.Department_ID
where D.[Department_Name] = 'IT'

--13c.	Delete all the student information for the students who belong to “Indonesia” country.

Delete StudCopy
From [dbo].[StudCopy] S
left join [dbo].[AddressCopy] A on S.AddressID=A.AddressID
where A.[Country] = 'Indonesia'

--13d.	Delete all the student information for the student who belongs to “Nanshi” city.

Delete StudCopy
From [dbo].[StudCopy] S
left join [dbo].[AddressCopy] A on S.AddressID=A.AddressID
where A.[City] = 'Nanshi'

--13e.	Delete all the student information for the student who belongs to “Bretagne” state.

Delete StudCopy
From [dbo].[StudCopy] S
left join [dbo].[AddressCopy] A on S.AddressID=A.AddressID
where A.[State] = 'Bretagne'

--14a. Update StudentMobile for those students who belongs to Department “ME”
Update [dbo].[StudCopy]
Set 
	[StudCopy].[StudentMobile] = ABS(CHECKSUM(newid()))
From [dbo].[StudCopy] S
Left join [dbo].[DepartmentCopy] D on S.Department_ID=D.Department_ID
Where D.[Department_Name] = 'ME'

--14b. Update Student DepartmentID as 3, for the StudentID=42.
UPDATE Students
SET Department_ID = 3
WHERE StudentId = 42;

--14c. Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
UPDATE Lecturer
SET Lecturer_Highest_Qualification ='Phd'
WHERE Lecturer_Highest_Qualification='PhD';

--14d. Update PostalCode as “00000” for the Address which contain NULL as a PostalCode
UPDATE Address
SET Postal_Code = '00000'
WHERE Postal_Code IS NULL;

--14e Update StudentLastName as “Paul” for the Student whose Name is “Jerry”
UPDATE Students
SET StudentLastName = ' Paul'
WHERE StudentFirstName = 'Jerry';










