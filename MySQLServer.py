import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(
        host='localhost',
        user='admin',
        password='Rainbow##321',
        database='alx_book_store'
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store;')
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print("Failed to establish a connection to the database")

finally:
    if 'connection' in locals() and connection.is_connected():
        connection.close()
        print("Connection closed")

