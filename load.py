# for load the data to mysql
from sqlalchemy import create_engine
# use data from transform phase
from transform import transform_data

def load_data():
    # get the clean data_set from tranform phase
    hr_data=transform_data()
    #connect the mysql to python
    engine=create_engine(
        "mysql+pymysql://root:8012@localhost/hr_dataset"
    )
    #load the data to mysql
    hr_data.to_sql(
        "employee_hr",
        engine,
        if_exists="replace",
        index=False
    )
load_data()