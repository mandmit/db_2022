from tkinter.tix import Form
from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def starter():
    return render_template('index.html')

@app.route('/table', methods = ['POST', 'GET'])
def table():
    global str_table
    if request.method == "POST":
        output = request.form.to_dict()
        str_table = output["table"]
        return render_template("result.html", table_name = str_table)
    else:
        return render_template("index.html")

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("result.html", table_name = str_table, name = sql.get_user(name))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        output = request.form.to_dict()
        name = output["name"]
        surname = output["surname"]
        return  render_template("update.html", entity = sql.update(name, surname), table_name = str_table)
    else:
        return render_template('update.html', table_name = str_table)

@app.route('/delete')
def delete():
    try:
        sql.delete()
    except:
        print("Error")
        return render_template('index.html')
    else:
        print("success")
        return render_template('delete.html')
    finally:
        print("Try...except block is finished")

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        output = request.form.to_dict()
        first = output["id"]
        second = output["name"]
        third = output["surname"]
        return  render_template("create.html", id = sql.add(first,second,third), table_name = str_table)
    else:
        return render_template('create.html', table_name = str_table)


if __name__ == '__main__':
    app.run(debug=True)