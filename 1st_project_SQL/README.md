# SQL Project

## Project Description
This project focuses on the analysis of a text provided by the professor (see `Assignment.pdf`). Based on this text, we developed an **Entity-Relationship (ER) model**, which was then converted into a **logical model** and finally into a **relational model**. For images of the models, refer to `1st_project_SQL/Images/Models/`.

### Steps Followed:
1. **ER Model Creation** - Defined based on the text analysis.
2. **Logical and Relational Model Definition** - Transition from ER to a logical schema and then to a fully relational schema.
3. **SQL Table Creation** - Writing SQL scripts to define the database schema while considering **foreign key constraints**.
4. **Data Population** - Using **ChatGPT** to generate sample data, then validating it with **Python scripts** to ensure compliance with constraints.
5. **Query Implementation** - Writing SQL queries to extract meaningful insights from the database.

## Tools Used
- **MySQL** - For database creation, visualization, and querying.
- **draw.io** - For designing ER and relational models.
- **Overleaf** - For writing the final project report.

## Project Files
The project contains the following directories and files:

### `/Data`
- Contains the database dump as a `.sql` file, allowing easy import into MySQL to recreate the project.

### `/Images`
- `/Models` - Contains `.png` images of the **ER model** and **relational model**.
- `/Queries` - Screenshots of **10 queries** and their respective results.
- `/Tables` - Screenshots of the defined tables.

### `/Models`
- `.drawio` files of **ER and relational models**.
- A `.pdf` file explaining the **logical model**.

### `/Queries`
- `.sql` files containing:
  - The **10 queries** developed for database interrogation.
  - `Query_Create_Table.sql`: The SQL script for **table creation**.
  - `Query_Add_Value_To_Tables.sql`: The SQL script for **data insertion**.

### `Assignment.pdf`
- The original project assignment document.

### `Final_report.pdf`
- The **final report** detailing all phases of the project, including methodology and justifications.

## Additional Information
For further details or clarifications, refer to `Final_report.pdf`, where we provide an in-depth explanation of each step taken and the rationale behind our decisions.
