# student-counselling-system
A counselling appointment booking system developed using Spring Boot and React

student-counselling-system-frontend (React + Vite)
Location: student-counselling-system-frontend/

✅ Prerequisites:
Node.js (v16+)

npm or yarn (already comes with Node.js)

▶️ Steps to run:
bash
Copy
Edit
cd frontend
npm install         # Install dependencies
npm run dev         # Start development server (usually at http://localhost:5173)

⚙️ student-counselling-system-backend (Spring Boot)
Location: student-counselling-system-backend/

✅ Prerequisites:
Java JDK 17+

Maven (optional if IntelliJ handles it)

IntelliJ IDEA (recommended)

▶️ Steps to run:
Open backend/ folder in IntelliJ

Wait for dependencies to resolve (Maven auto-import)

Run StudentCounsellingSystemApplication.java (main class)

Backend runs on: http://localhost:8080

NOTE: Ensure MySQL is running before starting backend

🗄️ Database (MySQL)
File: appointments_db.sql

✅ Prerequisites:
MySQL Server

A GUI (like MySQL Workbench) or CLI access

▶️ Steps to restore:
Open MySQL Workbench

Create a database: appointments_db

Import the file:

makefile
Copy
Edit
Source: appointments_db.sql
Make sure your MySQL credentials match these (or update application.yml):

makefile
Copy
Edit
username: root
password: root
