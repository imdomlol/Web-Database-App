# Web-Database-App
Fall 2026 Term Project for CPSC 332 File Structures and Database Systems

## Description
This project will use a MySQL database and PHP to build a web database application for a theoretical university to use.

## Group
- Dominic Dionne
- 
- 

## Project Structure
```
Web-Database-App/
├── sql/                        # run 1-3 to build the database
│   ├── 00_drop.sql             # wipes db
│   ├── 01_schema.sql           # DDL: tables, primary keys, foreign keys
│   ├── 02_seed.sql             # adds sample records
│   └── 03_queries.sql          # interface queries
├── homepage/                   
│   ├── index.html              
│   ├── css/
│   │   └── style.css
│   ├── includes/
│   │   ├── config.sample.php   # Credential TEMPLATE add the real info after clone
│   │   ├── db.php              # db connection
│   │   ├── header.php
│   │   └── footer.php
│   ├── professor/
│   │   ├── schedule.php        # given SSN returns class titles, classrooms, days, times
│   │   └── grades.php          # given Course + section returns count per grade
│   └── student/
│       ├── sections.php        # given Course returns sections, classrooms, days, times, enrolled
│       └── transcript.php      # given CWID returns courses taken and grades
└── docs/                       # 
    ├── projf26.pdf             # Proj desc
    ├── diagrams/               # ER diagram, relational model
    ├── screenshots/
    │   ├── interfaces/
    │   └── sample_runs/
    └── report/                 # Final report PDF
```

## Technical Requirements
### Entities:
| Entity | Attribute | Type | Notes |
|---|---|---|---|
| **Professor** | SSN | Key | |
| | Name | Simple | |
| | Address | Composite | Street Address, City, State, Zip Code |
| | Telephone Number | Composite | Area Code, 7 Digit Number |
| | Sex | Simple | |
| | Title | Simple | |
| | Salary | Simple | |
| | College Degrees | Multi-valued | |
| **Department** | Number | Key | |
| | Name | Simple | |
| | Telephone | Simple | |
| | Office Location | Simple | |
| **Course** | Number | Key | |
| | Title | Simple | |
| | Textbook | Simple | |
| | Units | Simple | |
| **Students** | CWID | Key | |
| | Name | Composite | First Name, Last Name |
| | Address | Simple | |
| | Telephone Number | Simple | |
| **Sections** *(weak)* | Section Number | Partial Key | Key is Course Number and Section Number |
| | Classroom | Simple | |
| | Number of Seats | Simple | |
| | Meeting Days | Simple | Stored as string |
| | Beginning Time | Simple | |
| | Ending Time | Simple | |

### Relationships:
| Entities | Cardinality | Notes |
|---|---|---|
| Department -> Course | 1:N | |
| Course -> Course | M:N | |
| Course -> Section | 1:N | |
| Professor -> Section | 1:N | |
| Professor -> Department | 1:1 | |
| Student -> Department (Major) | N:1 | |
| Student -> Department (Minor) | M:N | |
| Student -> Section | M:N | Has relationship attribute **Grade** |

### Interfaces:
#### Professors
- Given the SSN of a professor, list the titles, classrooms, meeting days and times of their classes
- Given a course number and section number, count how many students received each distinct grade

#### Students
- Given a course number, list the sections of the course, including the classrooms, meeting days and times, and the number of students enrolled in each section
- Given the CWID of a student, list all courses the student took and their grades

### Records:
- These are the minimums we need to have in the database
  
| Entity | Records |
|---|---|
| Students | 8 |
| Departments | 2 |
| Professors | 3 |
| Courses | 4 |
| Sections | 6 |
| Enrollments | 20 |

## Submission Requirements
Due **12/18/2026**, submission must be present in its completed and testable form on the server, and should contain the project report in the form of a **single pdf** uploaded to Canvas containing the items listed below.

### Cover Page
- List the team member information (Names and CWIDs)
- Account used to implement on Linux server
  - *Only one account requires project implementation uploaded*

### ER Diagram
- The ER Diagram for our database design
  
### Relational Model
- The Relational Model for our database design
- Primary keys and foreign keys should be clearly specified
  - *Fig 9.2 on page 291 as reference*

### Source Code
- The DDL used to create the tables
- The SQL used to implement queries
- The PHP scripts used to implement the user interface

### User Interface
- Screenshots outlining the user interface we implemented

### Sample Runs
- Input and Output of sample runs on the system