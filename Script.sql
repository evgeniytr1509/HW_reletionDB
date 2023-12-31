DROP TABLE IF EXISTS [groups];
CREATE TABLE [groups] (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT UNIQUE
);

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	fullname TEXT
);

DROP TABLE IF EXISTS students;
CREATE TABLE students (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	fullname TEXT,
	group_id INTEGER REFERENCES [groups](id)
);

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT UNIQUE,
	teacher_id INTEGER REFERENCES teachers(id)
);

-- MODIFY THE TABLE CREATION STATEMENT
-- Instead of CREATE TABLE grades, use CREATE TABLE IF NOT EXISTS grades
CREATE TABLE IF NOT EXISTS grades (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	student_id INTEGER REFERENCES students(id),
	subject_id INTEGER REFERENCES subjects(id),
	grade INTEGER NOT NULL,
	date_of DATE
);