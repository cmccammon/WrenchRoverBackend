# WrenchRover-API
Rails V 5.0  
Ruby V 2.3.0

So this is a Rails app running only API.  I have used the rails new --api switch to generate the framework. Most of the nesting is accomplished with Active Model Serializer, however I needed to use 'awesome nested set' for the recursive search in the categories endpoint. I am using JWT for token authentication. As the app evolves over the next few moths endpoints will be going away and only the ones we use will remain, including some new ones. We are making huge improvements to the controllers to make the endpoints and the frontend more efficient.

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
      "user_id": 16,
      "service_request_id": 19
    }
}
```  
# User sign in Authentication  
### Pass Token via header, in 'Authorization' field.
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
# Forgot password:  
## password change request  
.../passwords/forgot  
POST request,   
JSON format:
```
{
	"user_email": "cm@example.net"
}
```
This generates a token that is sent to the user in an email. This token is also stored in the user profile for authentication. (This token is also returned in json for debugging, but will be removed in production)

## password reset  
.../passwords/reset?token=97dcd4a2669241cfd49a96d88f478161c6d5   
POST request,   
JSON format:
```
{
	"password": "green12345"
}
```
This changes the password in the user account. The only response will be a json return of "status: password changed". If logged out the user will need to log in with new password. If logged in the user will need to sign back in once the auth token has expired.(this is only for times when the user is signed in and forgot their password, all other password changes should be made in the profile in a normal user account update.

# pushed to heroku  

https://wrenchroverapi.herokuapp.com/

initial 8/4/16,  
update 9/4/16,  
update 9/22/16,  
update 9/26/16,  
update 9/28/16,
update 10/4/16,  
update 10/28/16,  
update 12/18/16,  
update 1/12/17,  
update 1/30/17,  
update 2/10/17  
