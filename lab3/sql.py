import psycopg2

arr = 0
str_table = ""

def get_user(id):
    global arr
    arr = id
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
    cursor = connection.cursor()

    cursor.execute(f"SELECT * FROM \"user\" WHERE id = {id};")
    returned = cursor.fetchall()
    cursor.close()
    connection.close()
    return returned



def update( name, surname):
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
    cursor = connection.cursor()
    print(arr)
    cursor.execute(f"UPDATE \"user\" SET name = '{name}', surname = '{surname}' WHERE id = {arr}")

    connection.commit()
    cursor.execute(f"SELECT * FROM \"user\" WHERE id = {arr}")
    returned = cursor.fetchall()
    cursor.close()
    connection.close()
    return returned



def delete():
    connection = psycopg2.connect(dbname='Lab1DBase', user="postgres", 
                        password='1111', host='localhost')
    cursor = connection.cursor()

    cursor.execute(f"DELETE FROM \"user\" WHERE id = {arr}")
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
    return get_user(id)


#psql \! chcp 1251