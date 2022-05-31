import psycopg2

arr = 0
str_table = ""

def get_record(id, table_name):
    global arr
    arr = id
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
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
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
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
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
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
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
    cursor = connection.cursor()

    cursor.execute(f"DELETE FROM \"{table_name}\" WHERE id = {arr}")
    connection.commit()

    cursor.close()
    connection.close()

def add(id, name, surname):
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
    cursor = connection.cursor()

    sql = f"INSERT INTO \"user\" (id, name, surname) VALUES(%s, %s, %s)"
    val = (str(id),str(name), str(surname))
    cursor.execute(sql, val)
    connection.commit()

    cursor.close()
    connection.close()
    return get_record(id)


#psql \! chcp 1251