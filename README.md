# WrenchRover-API

So this is a basic Rails API.  I have used the rails new --api switch and used g scaffold for all controllers and models.

https://wrenchroverapi.herokuapp.com/

#Get all users
 get request
 /users
#Get a single user
get request
/users/id
#Add a user
post request
/users
  json format:
  {
   "user": {
     "user_name": "Chris",
     "user_email": "chris@example.net",
     "user_zip": "95556"
   }
  }
#Remove a user(not currently doing)
  delete request
  /users/id
#Update a user
put request
/users/id
json format:
{
 "user": {
   "user_name": "Chris",
   "user_email": "chris@example.net",
   "user_zip": "95556"
 }
}
#Same format for all other listed end points.
#Service Center
get, post
/service_centers
get, put
/service_centers/id
json format:
{
 "service_center": {
    "service_name": "Shady tree",
    "service_address": "12345 west side",
    "service_city": "Renton",
    "service_state": "Washington",
    "service_zip": "98056",
    "service_phone": "1-412-571-0860",
    "service_email": "shady@example.com",
    "service_bio": "Why he do that?"
 }
}
#Service Requests
get, post
/service_requests
get, put
/service_requests/id
json format:
{
  "service_request": {
    "request_auto_data": "[Jeep, cherokee, limited, 4.0l 3A]"
    "request_issue": "Insert amazing text here about the issue"
    "user_id": "put the user ID from current user session"    
  }
}


#pushed to heroku
https://wrenchroverapi.herokuapp.com/

initial 8/4/16
