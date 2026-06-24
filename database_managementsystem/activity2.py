# import file from ypur system
from google.colab import files
file= files.upload()

import sqlite3

database= 'database.sqlite'

conn=sqlite3.connect(database)
print('opened data sucessfully')


import pandas as pd
tables = pd.read_sql("""SELECT *
                     FROM sqlite_master
                    WHERE TYPE='table';""",conn)
tables