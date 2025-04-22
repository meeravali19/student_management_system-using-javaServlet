# 🎓 Student Management System

A fully functional **web-based student management portal** built with **Java Servlets**, **JSP**, **HTML/CSS**, and **MySQL**. This project aims to simplify administrative tasks like student registration, grade tracking, and course management with an intuitive interface.


## ✨ Key Features

✅ **Admin Dashboard** – Manage student profiles, courses, and grades  
✅ **Secure Authentication** – Login system for both admins and users  
✅ **Student CRUD Operations** – Add, update, delete, and view student data  
✅ **Course Enrollment** – Assign students to courses  
✅ **Grade Management** – View and update student grades  
✅ **Responsive UI** – Clean and user-friendly design  

## ⚙️ Tech Stack

| Layer        | Technologies             |
|--------------|--------------------------|
| 🖥 Frontend   | HTML, CSS, JSP           |
| ⚙️ Backend    | Java Servlets            |
| 🗃 Database   | MySQL                    |
| 🌐 Server     | Apache Tomcat            |
| 🛠 IDE        | Eclipse / IntelliJ IDEA  |



## 🚀 Getting Started

### 1. Clone the Repo  
   ```sh
     git clone https://github.com/meeravali19/student_management_system-using-javaServlet.git
   ```

### 2. Setup MySQL
   **Create a database:**
   ```
  CREATE DATABASE student_db;
   ```
Import the provided SQL script (database.sql) if available.  
**Update your DB credentials in the code:**
```sh
DB_URL = jdbc:mysql://localhost:3306/student_db
DB_USER = your_username
DB_PASSWORD = your_password
```

### 3. Deploy the Project
Open the project in Eclipse or IntelliJ.  
Add the project to Apache Tomcat Server.  
**Run the server and go to:**  
```👉 http://localhost:8080/student_management_system```


## 🧠 Folder Structure

```
student_management_system/
├── src/
│   ├── model/
│   ├── dao/
│   └── servlet/
├── WebContent/
│   ├── jsp/
│   ├── css/
│   ├── js/
│   └── WEB-INF/
├── lib/
├── .classpath
├── .project
└── README.md
```

## 🤝 Contributing
