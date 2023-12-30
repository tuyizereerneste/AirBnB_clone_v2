"""Flask web application must be listening on 0.0.0.0
Routes:
    /: display “Hello HBNB!”
    /hbnb: display “HBNB”
    /c/<text>: display “C ” followed by the value of the text
    /python/<text>: display “Python ”,
    followed by the value of the text
"""

from flask import Flask

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


if __name__ == "__main__":
    app.run(host="0.0.0.0")
