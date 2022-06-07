import psycopg2
import db_conf

arr = 0
str_table = ""

def get_record(id, table_name):
    global arr
    arr = id
    connection = psycopg2.connect(dbname=db_conf.db_name, user=db_conf.db_user, 
                        password=db_conf.db_user_password, host=db_conf.db_host)
    cursor = connection.cursor()

    if table_name == "result":
        cursor.execute(f"SELECT * FROM \"{table_name}\" WHERE user_id = {id};")    
    else: 
        cursor.execute(f"SELECT * FROM \"{table_name}\" WHERE id = {id};")
    returned = cursor.fetchall()
    cursor.close()
    connection.close()
    return returned

def get_records(table_name):
    connection = psycopg2.connect(dbname=db_conf.db_name, user=db_conf.db_user, 
                        password=db_conf.db_user_password, host=db_conf.db_host)
    cursor = connection.cursor()
    tmp = "id"
    if table_name == "result":
        tmp = "user_id"
    cursor.execute(f"SELECT * FROM \"{table_name}\" ORDER BY {tmp};")
    returned = cursor.fetchall()
    cursor.close()
    connection.close()
    return returned

def update(lst, table_name):
    connection = psycopg2.connect(dbname=db_conf.db_name, user=db_conf.db_user, 
                        password=db_conf.db_user_password, host=db_conf.db_host)
    cursor = connection.cursor()
    print(arr)
    print(lst)
    if table_name == "user":
        cursor.execute(f"UPDATE \"{table_name}\" SET name = '{lst[0]}', surname = '{lst[1]}' WHERE id = {arr}")
    if table_name == "budget":
        cursor.execute(f"UPDATE \"{table_name}\" SET dollars = {lst[0]} WHERE id = {arr}")
    if table_name == "group":
        cursor.execute(f"UPDATE \"{table_name}\" SET subject_area_id = {lst[0]}, name = '{lst[1]}' WHERE id = {arr}")
    if table_name == "subject_area":
        cursor.execute(f"UPDATE \"{table_name}\" SET budget_id = {lst[0]}, title = '{lst[1]}' WHERE id = {arr}")

    connection.commit()
    
    cursor.execute(f"SELECT * FROM \"{table_name}\" WHERE id = {arr}")
    returned = cursor.fetchall()
    cursor.close()
    connection.close()
    return returned



def delete(table_name):
    connection = psycopg2.connect(dbname=db_conf.db_name, user=db_conf.db_user, 
                        password=db_conf.db_user_password, host=db_conf.db_host)
    cursor = connection.cursor()

    cursor.execute(f"DELETE FROM \"{table_name}\" WHERE id = {arr}")
    connection.commit()

    cursor.close()
    connection.close()

def add(lst, table_name):
    connection = psycopg2.connect(dbname=db_conf.db_name, user=db_conf.db_user, 
                        password=db_conf.db_user_password, host=db_conf.db_host)
    cursor = connection.cursor()
    sql = ""
    val = ""
    if table_name == "user":
        sql = f"INSERT INTO \"{table_name}\" (id, name, surname) VALUES(%s, %s, %s)"
        val = (str(lst[0]),str(lst[1]), str(lst[2]))
    if table_name == "group":
        sql = f"INSERT INTO \"{table_name}\" (id, subject_area_id, name) VALUES(%s, %s, %s)"
        val = (str(lst[0]),str(lst[1]), str(lst[2]))
    if table_name == "subject_area":
        sql = f"INSERT INTO \"{table_name}\" (id, budget_id, title) VALUES(%s, %s, %s)"
        val = (str(lst[0]),str(lst[1]), str(lst[2]))
    if table_name == "budget":
        sql = f"INSERT INTO \"{table_name}\" (id, dollars) VALUES(%s, %s)"
        val = (str(lst[0]),str(lst[1]))
    cursor.execute(sql, val)
    connection.commit()

    cursor.close()
    connection.close()
    return get_record(lst[0], table_name)