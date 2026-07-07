#transform phase:
#check the missing values:
# first import the extract functions
from extract import extract_data
def transform_data():
    #read the data from extract
    hr_data = extract_data()   # get the dataframe returned by extract.py 
    #check the missing values
    print("Missing_Values")
    print(hr_data.isnull().sum())
    #remove the missing value
    hr_data.dropna(inplace=True)
    print("Remove the missing values")
    print(hr_data.dropna())
    #list out the duplicate vales and delect the duplicate values
    hr_data.drop_duplicates()
    print("Remove the duplicated values")
    print(hr_data.drop_duplicates())
    return hr_data
transform_data()