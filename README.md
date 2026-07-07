# Employee Performance and Attrition Analysis using Python ETL
## 📌 Project Overview
Employee data plays a vital role in helping organizations understand workforce performance, employee retention, salary structure, and promotion trends.  
This project implements a complete ETL (Extract, Transform, Load) pipeline using **Python, MySQL, Pandas, SQLAlchemy, and Matplotlib** to process and analyze employee HR data.

# The workflow:
- Extract employee information from a CSV dataset
- Transform the data through cleaning and categorization
- Load the processed data into MySQL
- Perform business analysis using SQL queries
- Visualize results using Python charts

## 🎯 Project Objectives
- Extract employee data from a CSV dataset  
- Clean and transform raw data  
- Load processed data into MySQL  
- Perform business analysis using SQL  
- Visualize employee insights through charts  
- Demonstrate a complete ETL workflow using Python and MySQL
  
## 🛠 Technologies Used
- Python  
- Pandas  
- MySQL  
- SQLAlchemy  
- PyMySQL  
- Matplotlib  
- Visual Studio Code  
- MySQL Workbench  

## 📂 Dataset
**IBM HR Analytics Employee Attrition Dataset**  
Contains attributes like Employee ID, Age, Gender, Department, Job Role, Monthly Income, Education, Experience, Performance Rating, Attrition, and more.

## 🔄 Project Workflow
CSV Dataset
      │
      ▼
Extract
      │
      ▼
Transform
      │
      ▼
Load into MySQL
      │
      ▼
SQL Analysis
      │
      ▼
Data Visualization

## 📑 ETL Phases
### Phase 1 – Extract
- Load CSV dataset with Pandas  
- Explore structure, columns, and statistics  

### Phase 2 – Transform
- Clean missing/duplicate records  
- Create categories: Salary, Age Group, Experience, Performance  

### Phase 3 – Load
- Connect Python to MySQL via SQLAlchemy  
- Store cleaned data in MySQL  

### Phase 4 – SQL Transformation
- Create business-friendly columns (Salary Category, Age Group, Experience Level, Performance Category)  

### Phase 5 – SQL Analysis
- Highest paying department/job role  
- Attrition rate  
- Promotion trends  
- Salary distribution  
- Experience vs salary  
- Gender ratio  
- Performance analysis  

### Phase 6 – Visualization
- Histograms, Pie Charts, Bar Charts, Scatter Plots, Line Charts, Box Plots  

## 📊 Project Outcomes
- Complete ETL pipeline implemented  
- SQL-based HR insights generated  
- Professional visualizations created  
- Demonstrated end-to-end workflow from raw data to business reporting  

## 💡 Business Benefits
- Monitor employee attrition  
- Analyze salary structures  
- Understand promotion trends  
- Compare employee performance  
- Support HR decision-making with data-driven insights  

## 🧑‍💻 Skills Demonstrated
- ETL Process  
- Python Programming  
- Pandas Data Analysis  
- SQL Queries  
- MySQL Database Management  
- SQLAlchemy  
- Data Visualization  
- Business Analytics  
- HR Data Analysis  

## ✅ Conclusion
This project highlights practical skills in **data engineering, SQL, Python programming, and business analytics**, making it suitable for real-world HR analytics applications and showcasing an end-to-end ETL workflow.

## 🚀 How to Run
```bash
# Clone the repository
https://github.com/Abiram-08/employee-performance-attrition-etl.git
# Install dependencies
pip install -r requirements.txt

# Run the ETL pipeline
python etl_pipeline.py

