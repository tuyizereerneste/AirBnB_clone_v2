#!/usr/bin/python3
"""Flask web application must be listening on 0.0.0.0
Routes:
    /: display “Hello HBNB!”
    /hbnb: display “HBNB”
    /c/<text>: display “C ” followed by the value of the text
    /python/<text>: display “Python ”,
    followed by the value of the text
    /number/<n>: display “n is a number”
    /number_template/<n>: display a HTML page only if n is an integer
"""

from flask import Flask, render_template

app = Flask(__name__)


@app.route("/", strict_slashes=False)
def hello():
    return "Hello HBNB!"


@app.route("/hbnb", strict_slashes=False)
def hello_hbnb():
    return "HBNB"


@app.route("/c/<text>", strict_slashes=False)
def c_text(text):
    word = text.replace("_", " ")
    return "C {}".format(word)


@app.route("/python", strict_slashes=False)
@app.route("/python/<text>", strict_slashes=False)
def python_text(text="is cool"):
    word = text.replace("_", " ")
    return "Python {}".format(word)


@app.route("/number/<int:n>", strict_slashes=False)
def number(n):
    return "{} is a number".format(n)


@app.route("/number_template/<int:n>", strict_slashes=False)
def html_template(n):
    return render_template("5-number.html", number=n)


if __name__ == "__main__":
    app.run(host="0.0.0.0")
