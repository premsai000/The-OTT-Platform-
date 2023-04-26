#importing the pandas library
import pandas as pd
#importing the mysql connector
import mysql.connector
# i am giving the access to the my sql database ott_platform with the username as newuser with the help of   mysql.connector.connect
db = mysql.connector.connect(host='localhost', user='newuser', password='', database='ott_platform')
# Cursors are helpful for database devlopers to process individual rows as result  returned by database system queries.
cursor = db.cursor()
# here i am passing the  result of the query into a variable called query.

query = "select email,age from contact"
# cursor.execute() executes the given database query or command cursor.execute method returns nothing .
# If a query is executed, the returned values can be retrieved using fetchall() methods.
cursor.execute(query)
# below the storing the result of the query into a variable called storingdata with the help of cursor.fetchall()
storingdata = cursor.fetchall()

# below I am creating two empty variables to store the data with the help of the for loop
all_email = []
all_age=[]
# here I am appending the data to all_email , all_age with the help of for each loop
for email, age in storingdata:
    all_email.append(email)
    all_age.append(age)
# here I am creating the dictonary data type variable dict , here I am assigning  all the column vales to email and age
dict = {'email': all_email, 'age': all_age}
# dataframe is help full to show the data like a table or 2 dimensional array
df = pd.DataFrame(dict)
# print(df) it gives the data to print like table.
df_csv = df.to_csv('C:/prem.csv')



