CREATE TABLE users(
  "user_id" INT PRIMARY KEY,
  "username" VARCHAR,
  "email" VARCHAR,
  "password" VARCHAR,
);

CREATE TABLE students(
  "student_id" INT PRIMARY KEY,
  "user_id" INT,
  "student_name" VARCHAR,
  "address" TEXT,
  "phone_number" VARCHAR,
  "qualification" TEXT,
  "work_experience" TEXT,
  "mentor_id" INT
);

CREATE TABLE mentors(
  "mentor_id" INT PRIMARY KEY,
  "mentor_name" VARCHAR,
  "qualification" TEXT,
  "no_of_mentees" INT
);

CREATE TABLE topics(
  "topic_id" INT PRIMARY KEY,
  "topic_name" VARCHAR,
  "description" TEXT,
  "no_of_sessions" INT,
);

CREATE TABLE tasks(
  "task_id" INT PRIMARY KEY,
  "topic_id" INT,
  "task_name" VARCHAR,
  "description" TEXT,
  "deadline" DATE
);

CREATE TABLE attendance(
  "attendance_id" INT PRIMARY KEY,
  "user_id" INT,
  "topic_id" INT,
  "session_date" DATE,
  "status" VARCHAR
);

CREATE TABLE company_drive(
  "drive_id" INT PRIMARY KEY,
  "company_name" VARCHAR,
  "drive_date" DATE,
  "description" TEXT
);

CREATE TABLE company_drive_user_attendance(
  "drive_attendance_id" INT PRIMARY KEY,
  "user_id" INT,
  "drive_id" INT
);

CREATE TABLE queries(
  "query_id" INT PRIMARY KEY,
  "student_id" INT,
  "mentor_id" INT,
  "topic_id" INT,
  "question" TEXT,
  "answer" TEXT,
  "status" VARCHAR
);

CREATE TABLE mock_interviews(
  "interview_id" INT PRIMARY KEY,
  "interview_date" DATE,
  "description" TEXT,
);

CREATE TABLE student_mock_interviews(
  "student_interview_id" INT PRIMARY KEY,
  "student_id" INT,
  "interview_id" INT,
  "date" DATE,
  "score" DECIMAL(3, 2),
  "comment" TEXT
);

CREATE TABLE capstone(
  "capstone_id" INT PRIMARY KEY,
  "user_id" INT,
  "project_name" VARCHAR,
  "description" TEXT,
  "project_link" VARCHAR
);

CREATE TABLE portfolio_submission(
  "portfolio_id" INT PRIMARY KEY,
  "student_id" INT,
  "capstone_id" INT,
  "submission_date" DATE,
  "github_link" VARCHAR,
  "portfolio_link" VARCHAR,
  "resume_link" VARCHAR
);