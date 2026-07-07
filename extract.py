#Extract Phase
# import the pandas library
import pandas as pd
#Read The CSV file
def extract_data():
    hr_data=pd.read_csv("C:/Users/abira/ETL_Project 2/data/WA_Fn-UseC_-HR-Employee-Attrition.csv")
    #display the dataset shape
    print("--------------------------")
    print(hr_data.shape)
    #Display the total no of rows and columns
    print("----------------------------")
    print(hr_data.info())
    print("-----------------------------")
    #visualize the data
    print(hr_data.head())
    return hr_data
extract_data()


