# **University Management System**

### **Overview**  
The **University Management System** is a web-based application designed to manage academic and administrative operations of a university. It provides a seamless interface for administrators, students, and faculty to perform their respective tasks efficiently.

---

## **Features**  

1. **Admin Panel**  
   - Manage students, faculty, and course details.
   - View and update academic records.  
   - Publish announcements and schedules.

2. **Student Portal**  
   - Course registration and schedule access.  
   - View grades and personal academic performance.

3. **Faculty Portal**  
   - Manage assigned courses and student evaluations.  
   - Submit and update grades.

4. **Database**  
   - Uses **MySQL** for storing and managing data efficiently.

5. **User Authentication**  
   - Role-based access for Admin, Faculty, and Students.

---

## **Technologies Used**  

- **Backend:** Java (Servlets)  
- **Frontend:** HTML, CSS, JavaScript  
- **Database:** MySQL  
- **Server:** Apache Tomcat  

---

## **Project Structure**

- `/src`: Java source files (Servlets, Database Configuration)
- `/webapp`: Contains HTML, CSS, and JavaScript files
- `/sql`: Database scripts for setting up MySQL tables
- `/lib`: External libraries and dependencies

---

## **Prerequisites**  

1. **Java Development Kit (JDK)**  
2. **Apache Tomcat Server**  
3. **MySQL Server**  
4. **IDE (Eclipse/IntelliJ)** with Maven support  

---

## **Setup Instructions**

### **1. Clone the Repository**  
```bash
git clone https://github.com/your-username/university-management-system.git
```

### **2. Import the Project into IDE**  
- Open your preferred IDE (e.g., Eclipse or IntelliJ).  
- Import the project as a Maven/Java project.

### **3. Set Up the Database**  
- Install and start **MySQL Server**.  
- Open the MySQL client or a GUI tool (e.g., phpMyAdmin, MySQL Workbench).  
- Create a database:  
  ```sql
  CREATE DATABASE university_db;
  ```
- Import the SQL file provided in the `/sql` directory:  
  ```sql
  SOURCE path_to_file/university_db.sql;
  ```

### **4. Configure Database Connection**  
- Locate the `dbConfig.java` file in your project (usually under `/src/config/`).  
- Update the database credentials:  
  ```java
  public class dbConfig {
      public static final String URL = "jdbc:mysql://localhost:3306/ums";
      public static final String USER = "your_mysql_username";
      public static final String PASSWORD = "your_mysql_password";
  }
  ```

### **5. Deploy on Apache Tomcat**  

- Install and set up **Apache Tomcat**.  
- In your IDE, configure Tomcat as a server.  
- Deploy the project:  
  - Right-click on the project in your IDE.  
  - Select `Run As > Run on Server` and choose Tomcat.  

### **6. Access the Application**  
- Open your web browser and navigate to:  
  ```  
  http://localhost:8080/UniversityManagement  
  ```  

---

## **How to Use**  

1. **Admin Login**  
   - Username: `admin`  
   - Password: `admin123`  

2. **Student/Faculty Login**  
   - Credentials can be created via the admin panel.

---

## **Troubleshooting**  

1. **Tomcat Server Not Starting**  
   - Ensure Tomcat is correctly installed and configured in your IDE.
   
2. **Database Connection Issues**  
   - Verify MySQL is running and database credentials are correct.  
   - Check that the JDBC driver is included in the `/lib` folder.

3. **Missing Tables or Data**  
   - Ensure the SQL script was executed successfully in the MySQL database.

---

## **Contributing**  
Contributions are welcome! Feel free to fork the repository and submit pull requests.  

---

## **License**  
This project is licensed under the [MIT License](LICENSE)
