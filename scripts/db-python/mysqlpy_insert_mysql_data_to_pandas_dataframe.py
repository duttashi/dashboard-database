# -*- coding: utf-8 -*-
"""
Created on Fri Jun  5 11:28:48 2020
Objective: Write mysql table into a pandas dataframe
Modified on Sun Sep 26 3:58 PM
@author: Ashish
"""


from sqlalchemy import create_engine, exc
import pandas as pd

# Define global variables
# connect to server
mysql_engine = create_engine('mysql://dbname:dbpassword@localhost/dbname')
myconxn = mysql_engine.connect()
#print(myconxn.execute("SELECT * FROM LOGBOOK"))
try:
    # in the execute() write the query such that it references the database_name.table_name
    # else it wll ot work
    mysql_cmd = myconxn.execute("select * from logbook.tbl_shop_grocery")
    # fetchall() hint got from this SO answer by user Daniel Velkov (https://stackoverflow.com/questions/12047193/how-to-convert-sql-query-result-to-pandas-data-structure)
    df = pd.DataFrame(mysql_cmd.fetchall())
    # fetch the table column names
    df.columns = mysql_cmd.keys()
    print(df.head)
    # close the database connection
    mysql_cmd.close()
except exc.DBAPIError:
    print("connection failed", exc.DBAPIError)
