import pandas as pd
import matplotlib.pyplot as plt
from sqlalchemy import create_engine
print("Create the connection")
engine=create_engine(
     "mysql+pymysql://root:8012@localhost/hr_dataset"
)
#---------------------------------------------------------------------------------
print("Connect to mysql")
hr_data=pd.read_sql(
    "SELECT * FROM employee_hr",
    engine
)
print("Visualize the table")
print(hr_data.head())
print(hr_data.columns.tolist())
#--------------------------------------------------------------------------------
print("Phase 6 : Visualize the data")
print("/nHistogram")

hr_data.columns = hr_data.columns.str.strip()
plt.figure(figsize=(8,5))
plt.hist(hr_data["MonthlyIncome"], bins=20)
plt.title("Monthly Income Distribution")
plt.xlabel("Monthly Income")
plt.ylabel("Number of Employees")
plt.show()
#-------------------------------------------------------------------------------
print("Pie-Chart")
print("/nPie Chart")

attrition_count = hr_data["Attrition"].value_counts()
print(attrition_count)

print("Create a pie chart")
plt.figure(figsize=(6,6))

plt.pie(
    attrition_count,
    labels=attrition_count.index,
    autopct="%1.1f%%"
)
plt.title("Employee Attrition")
plt.show()
#---------------------------------------------------------------------
print(hr_data.columns.tolist())
print("Bar Chart")
employee_count=hr_data["Department"].value_counts()
employee_count.plot(kind="bar")
plt.show()
print(hr_data.head())
#-------------------------------------------------------------------------
print("/nScatter Plot")
plt.figure(figsize=(8,5))

plt.scatter(
    hr_data["TotalWorkingYears"],
    hr_data["MonthlyIncome"]
)
plt.title("Total Working Years vs Monthly Income")
plt.xlabel("Total Working Years")
plt.ylabel("Monthly Income")
plt.show()
#-----------------------------------------------------------------------------
print("Lin Chart")
salary_by_age = hr_data.groupby("Age")["MonthlyIncome"].mean()

print("/nLine Chart")
plt.figure(figsize=(8,5))
plt.plot(
    salary_by_age.index,
    salary_by_age.values,
    marker="o"
)
plt.title("Average Monthly Income by Age")
plt.xlabel("Age")
plt.ylabel("Average Monthly Income")
plt.show()
#--------------------------------------------------------------------------------
print("Box Plot")
print("/nBox Plot")
plt.figure(figsize=(8,5))
plt.boxplot(hr_data["MonthlyIncome"])
plt.title("Monthly Income Distribution")
plt.ylabel("Monthly Income")
plt.show()
#----------------------------------------------------------------------------------
print("/nHorizontal Bar Chart")
jobrole_count = hr_data["JobRole"].value_counts()
print(jobrole_count)

plt.figure(figsize=(10,6))
plt.barh(
    jobrole_count.index,
    jobrole_count.values
)
plt.title("Employee Count by Job Role")
plt.xlabel("Employee Count")
plt.ylabel("Job Role")
plt.show()