from flask import Flask, request, jsonify
import time

app = Flask(__name__)


@app.route('/time')
def get_time():
    current_time = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())
    return jsonify({'time': current_time})


if __name__ == '__main__':
    app.run(debug=True)
