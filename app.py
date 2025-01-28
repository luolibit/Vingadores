from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/olá")
def hello_world():
    return "<p>Olá, mundo!</p>"

# from model.database import Database
# from model.interface import Interface

# def main():
#     Interface()

# if __name__ == '__main__':
#     main()
    