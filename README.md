A full-stack web application that allows applicants to register, log in, view job listings, and apply for jobs, post jobs ,search job etc.
🛠 Technologies Used
Java (Core Java, OOP)
Java Servlet & JSP
JDBC (Java Database Connectivity)
PostgreSQL
HTML/CSS (Basic styling)
Apache Tomcat
Eclipse IDE

✅ Features
👤 User Module:
User registration & login
View available jobs
Apply to jobs
Search jobs by keyword
👤 Recruiter Module:
Recruiter registration & login
Post new jobs
View applicants (optional extension)

🗃 Database Schema (PostgreSQL)
create this three tables : users, jobs, applications
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE jobs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    company VARCHAR(100),
    location VARCHAR(100),
    description TEXT,
    recruiter_id INTEGER REFERENCES users(id)
);

CREATE TABLE applications (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    job_id INTEGER REFERENCES jobs(id)
);

🚀 How to Run
Clone the repository:
Open in Eclipse or any Java IDE
Configure Tomcat Server and set project as a Dynamic Web Project
Add PostgreSQL Driver and servlet dependencies in POM.xml from maven repository
Set up PostgreSQL and update DB credentials in DBConnection.java
Deploy to Tomcat and run http://localhost:8080/JobPortalWebApp/

And Done! 🎉 You're all set. 

