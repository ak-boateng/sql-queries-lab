-- Create table Instructor
CREATE TABLE Instructor (
    InstName VARCHAR(50) PRIMARY KEY,
    InstOffice VARCHAR(10),
    InstRank VARCHAR(20)
);

-- Create Student table

CREATE TABLE Student (
    studentNo VARCHAR(4) PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    AddressType VARCHAR(100),
    City VARCHAR(50),
    StateCityZip VARCHAR(20),
    EnrollDate DATE,
    Undergrad VARCHAR(3)
);

-- Create table Course
CREATE TABLE Course (
    CourseNo VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    CrHour INT,
    InstName VARCHAR(50),
    FOREIGN KEY (InstName) REFERENCES Instructor(InstName)
);

-- Create table Grade
CREATE TABLE Grade (
    InstName VARCHAR(50),
    StudentNo VARCHAR(4),
    CourseNo VARCHAR(10),
    studentGrade CHAR(1),
    PRIMARY KEY (StudentNo, CourseNo),
    FOREIGN KEY (InstName) REFERENCES Instructor(InstName),
    FOREIGN KEY (StudentNo) REFERENCES Student(studentNo),
    FOREIGN KEY (CourseNo) REFERENCES Course(CourseNo)
);


-- Create table Takes
CREATE TABLE Takes (
    studentNo VARCHAR(4),
    courseNo VARCHAR(10),
    PRIMARY KEY (studentNo, courseNo),
    FOREIGN KEY (studentNo) REFERENCES Student(studentNo),
    FOREIGN KEY (courseNo) REFERENCES Course(CourseNo)
    -- Title is included for consistency with the image, but it’s redundant if linked to Course via courseNo
);