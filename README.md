# WrenchRover-API
Rails V 5.0  
Ruby V 2.3.0

So this is a Rails app running only API calls.  I have used the rails new --api switch to generate the framework. Most of the nesting is accomplished with Active Model Serializer, however I needed to use 'awesome nested set' for the recursive search in the categories endpoint.

## Some important Gems:
Figaro  
awesome nested set  
Active Model Serializer  
rack-cors
JWT
simple_command



# All users  
get request  
/users
# Get a single user  
get request  
/users/id
# Add a user  
post request  
/users  
  json format:
```
  {
   "user": {
     "user_name": "Chris",
     "user_email": "chris@example.net",
     "user_zip": "95556",
     "user_phone": "425-749-1082",
     "auto_id": 3,
     "password": "string"     
   }
  }
  ```
# Remove a user(not currently doing)  
  delete request  
  /users/id
# Update a user  
put request  
/users/id  
json format:
```
{
 "user": {
   "user_name": "Chris",
   "user_email": "chris@example.net",
   "user_zip": "95556",
   "password": "kudnfivnfunv"
 }
}
```
## Same format for all other listed end points.
# Service Center  
get, post  
/service_centers  
get, put  
/service_centers/id  
json format:  
```
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
```
# Service Requests  
get, post   
/service_requests  
get, put  
/service_requests/id  
json format:  
```
{
  "service_request": {
    "user_id": 1,
		"auto_id": 2,
		"work_request": "Work to be performed"
  }
}
```
# Service Quotes  
get, post   
/service_quotes  
get, put  
/service_quotes/id  
json format:  
```
{
 "service_quote": {
   "user_id": 2,
   "auto_id": 2,
   "service_center_id": 7,
   "service_request_id": 2,
   "quote_text": "Openings today or Thursday",
   "quote_cost": 200
 }
}
```
# Categories  
and their children  

get  
/categories

# Auto data
/autos
/autos/id
json format:  
```
{
  "auto": {
      "year": 1999,
      "make": "Ford",
      "model": "Escort",
      "trim": "xl",
      "engine": "3.6l v6",
      "mileage": 120,
      "user_id": 16
    }
}
```  
# User sign in Authentication  

/authenticate  

POST request,   
JSON format:  
```
{
	"user_email": "test@example.net",
	"password": "theappleis"
}
```  
JSON response:  
```
{
    "auth_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozMSwiZXhwIjoxNDc2Mzk2NjAyfQ.0u4Akcg6cHqW0cLf88E2kXGl_-CaxUlZGwqIsYPv3wM"
}
```  
### Pass Token via header, in 'Authorization' field.  

# pushed to heroku  
https://wrenchroverapi.herokuapp.com/

initial 8/4/16,  
update 9/4/16,  
update 9/22/16,  
update 9/26/16,  
update 9/28/16
