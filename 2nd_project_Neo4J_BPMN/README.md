# Neo4J & BPMN Project

## Project Description
This project builds upon the **ER model** defined in the first project and extends it by designing a **graph representation** suitable for a **Neo4J database**. The key steps of this project include:

### Steps Followed:
1. **Graph Design from ER Model**
   1.1 We transformed the **relational schema** into a **graph model**, representing tables as **nodes** and relationships as **edges**.
   1.2 For a visualization of the graph structure, see `2nd_project_Neo4J_BPMN/Images/Neo4J_Graph.png`.
3. **Cypher Code Implementation** - We wrote Cypher scripts to **create the graph** and **execute various queries** on Neo4J.
4. **Business Process Modeling (BPMN)** - Based on a business process description provided by the professor (see `Assignment.pdf`), we modeled the process using the **BPMN notation**.

## Tools Used
- **Neo4J** - For graph database creation, visualization, and querying.
- **draw.io** - For **BPMN process modeling**.
- **Overleaf** - For writing the final project report.

## Project Files
This project contains the following directories and files:

### `/BPMN`
- **`.drawio` file** - BPMN business process model.
- **`.pdf file`** - Brief explanation of the BPMN model.

### `/Data`
- **Database dump (`.dump` file)** - Allows importing the graph into Neo4J.
- **CSV files (`/CSV` folder)** - Contains **CSV tables** used for **populating the graph**.

### `/Graph_Creation_Queries`
- `Creation_Nodes_Relationships.pdf` - Cypher code for **creating nodes and relationships** in Neo4J.
- `Queries.pdf` - Contains **query requests** and **Cypher solutions**.

### `/Images`
- `/BPMN` - **PNG images** of the **BPMN business process**.
- `/Queries` - Screenshots of **queries and their results**.
- `/Tables` - Screenshots of **Cypher code for node creation** based on the first project's relational tables.
- `Neo4J_Graph.png` - **Graph structure visualization**.

### `Assignment.pdf`
- The **original project assignment document**.

### `Final_report.pdf`
- The **final report**, detailing all project phases and justifications.

## Additional Information
For further details or clarifications, refer to `Final_report.pdf`, where we provide an in-depth explanation of each step taken and the rationale behind our decisions.
