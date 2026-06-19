from flask import Flask, jsonify

app = Flask(__name__)

products = [
    {"id": 1, "name": "Wireless Mouse", "price": 599},
    {"id": 2, "name": "Mechanical Keyboard", "price": 2499},
    {"id": 3, "name": "USB-C Hub", "price": 1299}
]

@app.route("/")
def home():
    return jsonify({"message": "Welcome to the E-commerce API"})

@app.route("/products")
def get_products():
    return jsonify(products)

@app.route("/health")
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
