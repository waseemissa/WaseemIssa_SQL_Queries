/*********************************** SQL Queries *************************************/

/*1- Select all the instructors with all their degrees:*/

SELECT I.first_name, I.last_name, D.degree, D.major, D.university, D.year
FROM 'instructors' AS I , 'degrees' AS D
WHERE I.id = D.instructor_id;


/*2- Select the first name of the instructors who earned an MS degree in Computer Science*/

SELECT I.first_name
FROM instructors I , degrees D
WHERE I.id = D.instructor_id AND D.degree = "MS" AND D.major = "Computer Science";

/*3- Delete all instructors:*/

DELETE FROM instructors;
DELETE FROM degrees;

/*4- Insert a new record to this table:*/

INSERT INTO instructors(first_name, last_name, address, date_of_birth, phone_number, email, faculty_id) VALUES ("Ihab","Agha","Tripoli","9/8/1990","03123456","ihab.agha@gmail.com",1);
INSERT INTO degrees(instructor_id, degree, major, university, year) VALUES (1,"MS","Computer Science","LIU",2006);
