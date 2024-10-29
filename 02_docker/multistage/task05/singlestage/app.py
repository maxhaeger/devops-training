from flask import Flask, render_template, request, redirect, url_for, session
import random

app = Flask(__name__)
app.secret_key = 'supersecretkey'

@app.route("/", methods=["GET", "POST"])
def index():
    if "target" not in session:
        session["target"] = random.randint(1,100)
        session["attempts"] = 0
    
    message = ""
    if request.method == "POST":
        try:
            guess = int(request.form["guess"])
            session["attempts"] += 1

            if guess < session["target"]:
                message = "Too low!"

            elif guess > session["target"]:
                message = "Too high!"
            
            else:
                message = f"Congrats! You guessed the number in {session['attempts']} attempts."
                session.pop("target")
                session.pop("attempts")
        except ValueError:
            message = "Number has to be valid."
    
    return render_template("index.html", message=message)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)