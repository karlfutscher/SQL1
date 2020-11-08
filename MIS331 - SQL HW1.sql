CREATE TABLE Student
	(StudentID INT NOT NULL,
	StudentName VARCHAR(25),
	PRIMARY KEY (StudentID));
    
CREATE TABLE Faculty
	(FacultyID INT NOT NULL, 
    FacultyName VARCHAR(25),
    PRIMARY KEY (FacultyID));
    
CREATE TABLE Course
	(CourseID VARCHAR(8), 
    CourseName VARCHAR(15),
    PRIMARY KEY (CourseID));

CREATE TABLE Qualified
	(FacultyID INT NOT NULL,
	CourseID VARCHAR(8),
	DateQualified Date, 
	PRIMARY KEY (FacultyID, CourseID),
	CONSTRAINT Qualified_FK1 FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID),
	CONSTRAINT Qualified_FK2 FOREIGN KEY (CourseID) REFERENCES Course(CourseID));

DROP TABLE Qualified;

CREATE TABLE Section
	(SectionNo INT NOT NULL,
    Semester VARCHAR(7),
    CourseID VARCHAR(8),
    PRIMARY KEY (SectionNo),
    CONSTRAINT Section_FK FOREIGN KEY (CourseID) REFERENCES Course(CourseID));

CREATE TABLE Registration
	(StudentID INT NOT NULL,
    SectionNo INT NOT NULL,
    PRIMARY KEY (StudentID, SectionNo),
    CONSTRAINT Registration_FK1 FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
	CONSTRAINT Registration_FK2 FOREIGN KEY (SectionNo) REFERENCES Section(SectionNo));

INSERT INTO Course (CourseID, CourseName)
	VALUES  ('ISM 3113', 'Syst Analysis');
INSERT INTO Course (CourseID, CourseName)
	VALUES  ('ISM 3112', 'Syst Design');
INSERT INTO Course (CourseID, CourseName)
	VALUES  ('ISM 4112', 'Database');
INSERT INTO Course (CourseID, CourseName)
	VALUES  ('ISM 4930', 'Network');
    
SELECT * FROM Course;

SELECT CourseID FROM Course;

SELECT * FROM Course
WHERE CourseID = 'ISM 4930';