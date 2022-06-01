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

@app.route('/all_records', methods = ["POST", "GET"])
def all_records():
    return render_template("result.html", table_name = str_table, all_records = sql.get_records(str_table))

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("result.html", table_name = str_table, name = sql.get_record(name, str_table))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        l = []
        output = request.form.to_dict()
        if str_table == "user":
            l.append(output["name"])
            l.append(output["surname"])
        if str_table == "budget":
            l.append(output["price"])
        if str_table == "group":
            l.append(output["subject_area_id"])
            l.append(output["group_name"])
        if str_table == "subject_area":
            l.append(output["budget_id"])
            l.append(output["title"])
        print(l)
        return  render_template("update.html", entity = sql.update(l, str_table), table_name = str_table)
    else:
        return render_template('update.html', table_name = str_table)

@app.route('/delete')
def delete():
    try:
        sql.delete(table_name=str_table)
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
        l = []
        output = request.form.to_dict()
        l.append(output["id"])
        if str_table == "user":
            l.append(output["name"])
            l.append(output["surname"])
        if str_table == "budget":
            l.append(output["price"])
        if str_table == "group":
            l.append(output["subject_area_id"])
            l.append(output["group_name"])
        if str_table == "subject_area":
            l.append(output["budget_id"])
            l.append(output["title"])
        return  render_template("create.html", id = sql.add(l, str_table), table_name = str_table)
    else:
        return render_template('create.html', table_name = str_table)


if __name__ == '__main__':
    app.run(debug=True)