from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("index.html", name=sql.get_users(name))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        output = request.form.to_dict()
        name = output["name"]
        surname = output["surname"]
        return  render_template("update.html", name1 = sql.update(name, surname))
    else:
        return render_template('update.html')

@app.route('/delete')
def delete():
    try:
        sql.delete()
    except:
        print("Error")
    else:
        print("success")
    finally:
        return render_template('index.html')

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        output = request.form.to_dict()
        name1 = output["id"]
        name2 = output["name"]
        name3 = output["surname"]
        return  render_template("create.html", id = sql.add(name1,name2,name3))
    else:
        return render_template('create.html')


if __name__ == '__main__':
    app.run(debug=True)




#потрібно мати psycopg2,  flask 
#спершу вводимо id 
#виводить рядок з бд
#його можна змінити
#можна перейти знову на сторінку з пошуком рядка за id

#python3 -m venv name

#cd /d D:\cod\flask_app1
#virtualenv\Scripts\activate
#python app.py