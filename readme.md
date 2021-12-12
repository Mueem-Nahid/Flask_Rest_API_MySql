## Project: REST API, Flask, MySql
**How to install**

 - **Python 3+ needed, Xampp needed**
 - **This is a flask project. So, it needed a virtual environment. All files are included in this repository. This virtual env was created on windows 10**
 - **To activate the env, run ````.venv\scripts\activate````(for windows)**
 - **Required packages:**
	 - ````python -m pip install flask````
	 - `pip install jsonify`
	 - `pip install make-response`
	 - `pip install requests`
	 - `pip install pyjwt`
	 - `pip install DateTime`
	 - `pip install functools`
	 - `pip install flask-swagger-ui`
	 - `pip install Werkzeug`
	 - `pip install mysql-connector-python`
	 - `pip install jsonlib`
 - **DB installation: Create a database named `mueems_hotel_db`, import the database `mueems_hotel_db.sql`and enjoy**

**How to use:**

 - When you will hit the url `[127.0.0.1:5000](http://127.0.0.1:5000)` one popup will be shown like this: ![enter image description here](https://i.ibb.co/t3FQBBW/1.png)

 - Username could be anything, but Password should be `1234`. 
 - When you give the password and hit sign in, you will see a token. **Copy the token**
 - Now type this url: `http://127.0.0.1:5000/auth?token=`, and paste the token after `=` sign. It will look like this: `http://127.0.0.1:5000/auth?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoibXVlZW0iLCJleHAiOjE2MzkzMzk0OTd9.-4BvPmeY5TqaxjnI2DfK9LOkENZnnPAbPnjwW5__HBs`
> Don't use this token. Token may vary time to time!!!

 - When you will hit enter, you will see an UI like this: ![enter image description here](https://i.ibb.co/wYQ6N4W/2.png) 

 - Now search: ![enter image description here](https://i.ibb.co/mX0mFYd/3.png)

 - Location name should be `North Carolina`
 - Search results will be shown like this: ![enter image description here](https://i.ibb.co/tQ8rkJc/4.png)
