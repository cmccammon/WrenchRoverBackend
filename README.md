# README

So this is a basic Rails API.  I have used the rails new --api switch and used g scaffold for all controllers and models.


#Get all users
 get request
 /users

#get a single user
get request
/users/id

#add a user
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
#remove a user(not currently doing)
  delete request
  /users/id

#update a user
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
