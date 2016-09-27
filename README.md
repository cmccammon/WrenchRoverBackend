# WrenchRover-API
Rails V 5.0  
Ruby V 2.3.0

So this is a Rails app running only API calls.  I have used the rails new --api switch to generate the framework. Most of the nesting is accomplished with Active Model Serializer, however I needed to use 'awesome nested set' for the recursive search in the categories endpoint.

## Some important Gems:
Figaro  
awesome nested set  
Active Model Serializer  
rack-cors  

https://wrenchroverapi.herokuapp.com/

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
json
  {
   "user": {
     "user_name": "Chris",
     "user_email": "chris@example.net",
     "user_zip": "95556"
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
json
{
 "user": {
   "user_name": "Chris",
   "user_email": "chris@example.net",
   "user_zip": "95556"
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
json
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
json
{
  "service_request": {
    "request_auto_data": "[2012, jeep, Commander, 4.0l 5A]",
    "request_issue": "Insert amazing text here about the issue",
    "user_id": 12
  }
}
```
## List Categories and their children
get  
/categories

# Auto data
/autos
/autos/id
json format:  
```
json
{
  "service_request": {
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


# pushed to heroku  
https://wrenchroverapi.herokuapp.com/

initial 8/4/16,

update 9/4/16,

update 9/22/16,

update 9/26/16
