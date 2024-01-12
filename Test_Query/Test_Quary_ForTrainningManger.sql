-------------------Trainning manger--------------------------
--------(1)Add and Update And delete for Branch-----------------

--Add
select * from  Branch
exec AddOneOrMoreBranche 'manager', 'manager',  @BranchNames = 'Sohag';
select * from  Branch
--Update
select * from Branch
EXEC UpdateBranchNames
'manager', 'manager', 
    @OldBranchName = 'cairo',
    @NewBranchName = 'miniya';
select * from Branch
EXEC UpdateBranchNames
'manager', 'manager', 
    @OldBranchName = 'cairo',
    @NewBranchName = 'miniya';
--Delete
select * from Branch
EXEC DeleteBranch 'manager', 'manager',  @BranchID = 4;
select * from Branch


-------(2) Add and Update And delete for Course -----------------


--ADD
select * from Course
EXEC AddCourse
 'manager', 'manager', 
	@ID=5,
    @CourseName = 'js',
    @MinDegree = 25,
    @MaxDegree = 70,
    @Description = 'third course in front End';
select * from Course
EXEC AddCourse
 'manager', 'manager', 
 	@ID=7,
    @CourseName = 'jj',
    @MinDegree = 25,
    @MaxDegree = 70,
    @Description = 'second course in front End';
select * from Course
	EXEC AddCourse
 'manager', 'manager', 
 	@ID=7,
    @CourseName = 'css',
    @MinDegree = 25,
    @MaxDegree = 70,
    @Description = 'second course in front End';
--Update
SELECT * FROM Course
EXEC UpdateCourse
 'manager', 'manager',
    @OldID = 2,
	@NEWID=3,
    @NewCourseName = 'HTML',
    @MinDegree = 10,
    @MaxDegree = 90,
    @Description = 'THE FIRST COURSE IN FRONT END';
SELECT * FROM Course
--Delete
Select * from Course
EXEC DeleteCourse 'manager', 'manager',  @CourseID= 6;

-------(3) Add and Update And delete for Instractor -----------------

--Add
SELECT * FROM Instructor
EXEC AddInstructor
 'manager', 'manager', 
    @FName = 'mostafa',
    @LName = 'abdella',
    @Email = 'mostafaabdella88@gmail.com',
    @Password = 'Pass123t';
SELECT * FROM Instructor
EXEC AddInstructor
 'manager', 'manager', 
    @FName = 'mostafa',
    @LName = 'abdella',
    @Email = 'mostafaabdella88@gmail.com',
    @Password = 'Pass123y';

	------with incorrect pass or email---------
EXEC AddInstructor
 'manager', 'manager', 
    @FName = 'mostafa',
    @LName = 'abdella',
    @Email = 'mostafaabdella88',
    @Password = 'Pass123';

-- Update
SELECT * FROM Instructor
EXEC UpdateInstructor
 'manager', 'manager', 
    @InstructorID = 1, 
    @FName = 'abounob',
    @LName = 'bebo',
    @Email = 'bebo88@gmail.com',
    @Password = 'Pass1234';
SELECT * FROM Instructor
EXEC UpdateInstructor
 'manager', 'manager', 
    @InstructorID = 8 , 
    @FName = 'abounob',
    @LName = 'bebo',
    @Email = 'bebo88@gmail.com',
    @Password = 'Pass1234';

--Delete
SELECT * FROM Instructor
EXEC DeleteInstructorByID  'manager', 'manager',  @InstructorID = 6;

-------(4) Add and Update And delete for Intake -----------------
--Add
exec AddIntake 'manager', 'manager',  @IntakeName  = '44';
exec AddIntake 'manager', 'manager',  @IntakeName  = '66';
select * from Intake
--Update
select * from Intake
EXEC UpdateIntakeNames
'manager', 'manager', 
    @OldIntakeName = '44',
    @NewIntakeName = '77';
select * from Intake
EXEC UpdateIntakeNames
'manager', 'manager', 
    @OldIntakeName = '44',
    @NewIntakeName = '66';
--Delete 
select * from Intake
EXEC DeleteIntake 'manager', 'manager',  @IntakeID = '6';

---------------(5)Add and Update And delete for Question -----------------
--Add
SELECT * FROM Question
EXEC AddQuestion
 'manager', 'manager', 
	@Questions_ID=7,
    @Text_Questions ='what is the first course in Fornt End',
    @Correct_Answer_Text_Questions ='html',
    @True_or_False_Questions  ='js is 3 course',
    @Correct_Answer_True_or_False =1,
    @Choose_An_Answer_Question ='a or b',
    @Correct_Answer_Choose_Question ='a',
    @Course_Id  =4
SELECT * FROM Question
--Update
SELECT * FROM Question
EXEC UpdateQuestion
 'manager', 'manager', 
	@Questions_ID=6,
    @Text_Questions ='what is the first course in Fornt End',
    @Correct_Answer_Text_Questions ='html',
    @True_or_False_Questions  ='js is 3 course',
    @Correct_Answer_True_or_False =1,
    @Choose_An_Answer_Question ='a or b',
    @Correct_Answer_Choose_Question ='a',
    @Course_Id  =4
SELECT * FROM Question

--Delete
SELECT * FROM Question
EXEC DeleteQuestion  'manager', 'manager',  @QuestionID = 7;

---------------(6)Add and Update And delete for Student -----------------
--ADD
SELECT * from Student
EXEC AddStudent
 'manager', 'manager', 
    @ID=7,
    @FName = 'ali',
    @LName = 'abdella',
    @GraduationYear = '2020',
    @Email = 'ali88@gmail.com',
    @Password = 'Pass123Y';
SELECT * from Student

--------------- Incorrect pass or email------------------ 
EXEC AddStudent
 'manager', 'manager', 
	@ID=8,
    @FName = 'ali',
    @LName = 'abdella',
    @GraduationYear = '2020',
    @Email = 'ali88@gmail',
    @Password = 'Pass123F';

--Update
SELECT * FROM Student
EXEC UpdateStudent
 'manager', 'manager', 
    @StudentID = 7, 
    @FName = 'mostafa',
    @LName = 'abdella',
    @GraduationYear = '2021',
    @Email = 'mostafaabdella88@gmail.com',
    @Password = 'Pass123H';
SELECT * FROM Student
--Delete
SELECT * FROM Student
EXEC DeleteStudent 'manager', 'manager',  @StudentID = 7;

---------------(7)Add and Update And delete for track -----------------
--Add
exec AddTracks 'manager', 'manager',  @TrackNames = 'C#';
select * from Track
--Update 
select * from Track
EXEC UpdateTrackNames
 'manager', 'manager', 
    @OldTrackName = 'C#',
    @NewTrackName = 'c++';
select * from Track
EXEC UpdateTrackNames
 'manager', 'manager', 
    @OldTrackName = '.net',
    @NewTrackName = 'c++';
--Delete 
select * from Track
EXEC DeleteTrack  'manager', 'manager',  @TrackID = 5;
select * from Track