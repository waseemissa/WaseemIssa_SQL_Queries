**************************** SQL Queries ***********************************

On behalf of SE Factory's Full Stack Web Development Bootcamp, we were asked to list the
problems with a faculty's database, create the database, and solve some queries.

The database of departments contains many errors in the implementation listed below:

1- Lack of information:

	There are some data that need to be saved in the database but this thing is prevented by how the database is implemented.
This problem is solved by creating new tables with all the attributes that may be necessary for keeping track of all the instructors.
Information missing includes primary keys (unique identifiers) like id for each instructor, faculty, and degree that will be set 
as a primary key for each table respectively.

2- Lack of data normalization:

	The table contains three attributes for three degrees that an instructor may have. This is not efficient and a user entering data
to the tabe is forced to save more than one detail to each field separated by commas like "MS in Computer Science, 2018, AUB". To solve this,
a new table should be created to save all the degrees owned by an instructor and through a one-to-many relationship between 
instructors table and this table and so the attribute "id" of instructors table becomes a foreign key in degrees table assuming that 
it's impossible for two instructors to have the same degree from the same university issued at the same year. 

	besides instructors table and degrees table, there should be a table for the faculties with a one-to-one relationship connecting it to instructors 
assuming that an instructor can be related to one faculty only. For that, we add the id of the faculty to the table of instructors as a foreign key.

	The above procedure is mainly conducted to normalize data through new tables created and the relationships implemented
between them.

3- Problems with the structure:

	Attributes of the faculty table aren't named in a clear way that could make the table not easy to be understood. This is solved by renaming the attributes in 
the new created tables.

