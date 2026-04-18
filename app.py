from flask import Flask

app = Flask(__name__)

AWS_SECRET_KEY = "AKIAIOSFODNN7EDJKJGKJGN848514G"

@app.route('/')
def ping():
    return {"status": "ok", "message": "API opérationnelle !"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
