-- Insert data into Instructor
INSERT INTO Instructor (InstName, InstOffice, InstRank) VALUES
('Lujan', 'BE109', 'Assistant'),
('Morris', 'BE110', 'Full'),
('Presley', 'BE124', 'Associate'),
('Wilke', 'BE220', 'Full');

-- Insert data into Student
-- Insert data into Student
INSERT INTO Student (studentNo, LastName, FirstName, AddressType, City, StateCity, Zip, EnrollDate, Undergrad) VALUES
('0103', 'OCasey', 'Harriet', '4088 Ottuwa Way', 'Lexington', 'KY', '40515', '1997-08-25', 'Yes'),
('0122', 'Logan', 'Janet', '860 Charleston St.', 'Lexington', 'MA', '5500', '1998-01-19', 'No'),
('0123', 'Hagen', 'Greg', '6065 Rainbow Falls Rd.', 'Springfield', 'MO', '65803', '1997-06-10', 'Yes'),
('0139', 'Carrol', 'Pat', '4018 Landers Lane', 'Lafayette', 'CO', '84848', '1997-08-25', 'Yes'),
('0148', 'Wolf', 'Bee', '1775 Bear Trail', 'Cincinnati', 'OH', '45208', '1998-01-19', 'Yes'),
('0167', 'Krumple', 'Scott', '580 E Main St.', 'Lexington', 'KY', '40506-0034', '1997-08-25', 'No'),
('0171', 'Harvey', 'Elliot', '34 Kerr Dr', 'El Mano', 'CO', '80465', '1997-08-25', 'Yes'),
('0181', 'Zygote', 'Carrie', '8607 FernDale St', 'Grenoble', 'CA', '91360-4260', '1997-08-25', 'Yes'),
('0194', 'Loftus', 'Abner', '8077 Montana Place', 'Big Fish Bay', 'WI', '53717', '1998-01-19', 'Yes'),
('0251', 'Grainger', 'John', '2256 N Sante Fe Dr.', 'Illiase', 'CA', '91210', '1998-01-19', 'Yes');

-- Insert data into Course
INSERT INTO Course (CourseNo, Title, CrHour, InstName) VALUES
('DIS 110', 'Introduction to DOS', 2, 'Lujan'),
('DIS 118', 'Microcomputer Applications', 3, 'Wilke'),
('DIS 138', 'Introduction to Windows', 2, 'Lujan'),
('DIS 140', 'Introduction to Databases/Access', 3, 'Presley'),
('DIS 150', 'Introduction to Spreadsheet/Excel', 2, 'Morris');

-- Insert data into Grade
INSERT INTO Grade (InstName, StudentNo, CourseNo, studentGrade) VALUES
('Lujan', '0103', 'DIS 110', 'A'),
('Lujan', '0123', 'DIS 138', 'A'),
('Morris', '0148', 'DIS 150', 'C'),
('Morris', '0181', 'DIS 150', 'D'),
('Presley', '0122', 'DIS 140', 'E'),
('Presley', '0148', 'DIS 140', 'C'),
('Presley', '0167', 'DIS 140', 'B'),
('Wilke', '0103', 'DIS 118', 'A'),
('Wilke', '0122', 'DIS 118', 'D');


-- Insert data into Takes
INSERT INTO Takes (studentNo, courseNo) VALUES
('0103', 'DIS 110'),
('0103', 'DIS 118'),
('0122', 'DIS 118'),
('0122', 'DIS 138'),
('0122', 'DIS 140'),
('0123', 'DIS 110'),
('0123', 'DIS 140'),
('0148', 'DIS 140'),
('0148', 'DIS 150'),
('0167', 'DIS 138'),
('0167', 'DIS 140'),
('0167', 'DIS 150'),
('0181', 'DIS 118'),
('0181', 'DIS 140'),
('0181', 'DIS 150');
