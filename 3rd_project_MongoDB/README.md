# MongoDB Project

## Project Description
This project builds upon the **ER model** defined in the first project and extends it by designing a **document-based data representation** suitable for **MongoDB**.

### Steps Followed:
1. **Document Structure Design from ER Model**:
   - We transformed the **relational schema** into a **set of documents**, representing tables as **documents** and relationships as **embedded references**.
   - For a visualization of the document structures, see `3rd_project_MongoDB/Images/Documents_Structures/`.
3. **Data Conversion to JSON** - Using **Python scripts**, we converted **CSV files** (from the second project) into a **JSON file** containing all the data for MongoDB.
4. **MongoDB Document Creation** - We wrote scripts to **insert documents into a collection** and implemented **queries** to extract relevant information.

## Tools Used
- **MongoDB** - For document database creation, visualization, and querying.
- **Python** - For converting CSV files into a structured JSON file.
- **Overleaf** - For writing the final project report.

## Project Files
This project contains the following directories and files:

### `/Data`
- **Database dump (`.json` file)** - Allows importing data into MongoDB to recreate the documents.

### `/Images`
- `/Documents_Structures` - **PNG images** of **abstract document structures** with examples.
- `/Queries` - Screenshots of **queries and their results**.
- `Collection.png` - **General overview** of the MongoDB collection.

### `Assignment.pdf`
- The **original project assignment document**.

### `Final_report.pdf`
- The **final report**, detailing all project phases and justifications.

## Additional Information
For further details or clarifications, refer to `Final_report.pdf`, where we provide an in-depth explanation of each step taken and the rationale behind our decisions.
