import jwt
from flask import Flask, jsonify, make_response,request
import datetime
from functools import wraps
from flask_swagger_ui import get_swaggerui_blueprint
from werkzeug.utils import redirect
import mysql.connector
import json

# DB connection
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="mueems_hotel_db"
)

app = Flask(__name__)

app.config['SECRET_KEY'] = 'mysecretkey'

def token_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        token = request.args.get('token')

        if not token:
            return jsonify({'message': 'Token is missing'}), 403

        try: 
            data = jwt.decode(token, app.config['SECRET_KEY'],algorithms='HS256')
        except:
            return jsonify({'message': 'Token is invalid'}), 403

        return f(*args, **kwargs)
    return decorated

@app.route('/hotel', methods=['GET'])
def hotel():
    title = request.args.get('title')
    bedroom = request.args.get('bedroom')
    bathroom = request.args.get('bathroom')
    sleep = request.args.get('sleep')
    price = request.args.get('price')
    location = request.args.get('location')
    data=search(title, bedroom, bathroom, sleep, price, location)
    if len(data):
        return data
    else:
        return "No search result found"

    

@app.route('/auth')
@token_required
def auth():
    ### swagger specific ###
    SWAGGER_URL = '/swagger'
    API_URL = '/static/swagger.json'
    SWAGGERUI_BLUEPRINT = get_swaggerui_blueprint(
        SWAGGER_URL,
        API_URL,
        config={
            'app_name': "Seans-Python-Flask-REST-Boilerplate"
        }
    )
    app.register_blueprint(SWAGGERUI_BLUEPRINT, url_prefix=SWAGGER_URL)
    ### end swagger specific ###

    return redirect("http://127.0.0.1:5000/swagger",code=302)


@app.route("/")
def home():
    return redirect("http://127.0.0.1:5000/login")

@app.route('/login')
def login():
    auth = request.authorization

    if auth and auth.password == '1234':
        token =jwt.encode({'user':auth.username,'exp':datetime.datetime.utcnow()+datetime.timedelta(minutes=20)},app.config['SECRET_KEY'])

        return jsonify({'token':token})
    return make_response('could not varify!', 401, {'WWW-Authenticate': 'Basic realm=Login Required'})


if __name__ == '__main__':
    app.run(debug=False)

# database
def search(title, bedroom, bathroom, sleep, price, location):
    allInfo = []
    mycursor = mydb.cursor()

    myQuery = "SELECT * FROM Hotel_details"
    where = []
    if location is not None:
        where.append("Location = "+f"'{location}'")
    if price is not None:
        where.append("Price >= "+f"'{price}'")
    if title is not None:
        where.append("Name = "+f"'{title}'")
    if bedroom is not None:
        where.append("Bedroom >= "+f"'{bedroom}'")
    if bathroom is not None:
        where.append("Bathroom >= "+f"'{bathroom}'")
    if sleep is not None:
        where.append("Sleeps >= "+f"'{sleep}'")
    if where:
        myQuery = '{} WHERE {} ORDER BY Price ASC'.format(myQuery, ' AND '.join(where))

    mycursor.execute(myQuery)
    res = mycursor.fetchall()
    for x in res:
        data = {
            "Hotel_Name": x[0],
            "no_of_Sleeps": x[1],
            "no_of_Bedrooms": x[2],
            "no_of_Bathrooms": x[3],
            "Image": {
                "img1": x[4],
                "img2": x[5],
                "img3": x[6],
            },
            "Price": x[7],
            "Location": x[8],
        }
        allInfo.append(data)

    obj = json.dumps(allInfo, indent = 4)
    return obj
