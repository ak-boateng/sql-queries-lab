# SQL Queries Lab

Welcome to **SQL Queries Lab**, a beginner-friendly repository for learning SQL fundamentals through hands-on practice. This repo contains SQL queries to create and manipulate 5 tables—**Instructor**, **Student**, **Course**, **Takes**, and **Grade**—designed to teach essential SQL concepts like table creation, data insertion, querying, and joins.

## Purpose
This repository helps beginners master SQL by providing a simple academic database to:
- Create and structure tables
- Insert, update, and delete data
- Write queries using SELECT, WHERE, JOIN, GROUP BY, and more
- Understand table relationships (e.g., one-to-many, many-to-many)

## Getting Started

### Prerequisites
- A SQL database system (e.g., MySQL, PostgreSQL, SQLite, or SQL Server)
- Basic understanding of SQL syntax
- A SQL client or IDE (e.g., DBeaver, MySQL Workbench, pgAdmin, or VS Code with SQL extensions)

### Setup Instructions
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/ak-boateng/sql-queries-lab.git
   ```
2. **Choose Your Database**:
   - Queries are written to be compatible with most SQL databases. Minor syntax tweaks may be needed (e.g., for SQLite or PostgreSQL).
3. **Run the Setup Queries**:
   - Navigate to the `tables` directory.
   - Execute `create_tables.sql` to create the 5 tables.
   - Run `insert_data.sql` to populate the tables with sample data.
4. **Explore the Queries**:
   - The `queries` directory contains example SQL queries, organized by topic (e.g., basic SELECT, JOINs, aggregations).
   - Use these as a starting point to learn and experiment.

## Table Overview
The database simulates an academic system with 5 tables:

| Table       | Description                                                                 | Key Columns                              |
|-------------|-----------------------------------------------------------------------------|------------------------------------------|
| Instructor  | Stores instructor information.                                              | instructor_id (PK), name, department     |
| Student     | Contains student details.                                                   | student_id (PK), name, email             |
| Course      | Holds course information, taught by an instructor.                          | course_id (PK), title, instructor_id (FK)|
| Takes       | Tracks which students are enrolled in which courses.                        | student_id (FK), course_id (FK)          |
| Grade       | Records grades for students in courses.                                     | student_id (FK), course_id (FK), grade   |

**Relationships**:
- An **Instructor** teaches multiple **Courses** (1-to-many via instructor_id).
- A **Student** enrolls in multiple **Courses** through the **Takes** table (many-to-many).
- A **Grade** is assigned to a **Student** for a **Course** (many-to-many).

## Query Examples
*(To be added after table schemas are finalized and queries are written)*  
The `queries` directory will include:
- **Basic Queries**: SELECT, WHERE, ORDER BY
- **Joins**: INNER JOIN, LEFT JOIN
- **Aggregations**: GROUP BY, HAVING
- **Subqueries**: Nested queries for advanced filtering

## Directory Structure
```
sql-queries-lab/
├── tables/
│   ├── create_tables.sql    # SQL to create the 5 tables
│   ├── insert_data.sql      # SQL to insert sample data
├── queries/
│   ├── basic_queries.sql    # Basic SELECT, WHERE, etc.
│   ├── join_queries.sql     # JOIN examples
│   ├── advanced_queries.sql # Aggregations, subqueries
├── README.md                # This file
└── LICENSE                  # MIT License
```

## Contributing
Contributions are welcome! To add queries or improve the repo:
1. Fork the repo.
2. Create a branch (`git checkout -b feature/your-idea`).
3. Commit changes (`git commit -m "Add new query"`).
4. Push to the branch (`git push origin feature/your-idea`).
5. Open a Pull Request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact
For questions or suggestions, open an issue or contact [https://github.com/ak-boateng/](ak-boateng) on GitHub.