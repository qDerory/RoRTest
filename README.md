# RoR Test.

* Please use git to save and publish your work.
* Feel free to improve what is already there along the way
* Designed to be done in one hour

## Design a certification system for construction crew
* The storage is already setup with Postgres v12, our database of choice here at Buildsafely.
* The crew API to manage a crew is already available at localhost:3000/api/crew when launching the project.

#### 1. Environment setup 
_These are just example steps to achieve the setup, feel free to setup it in your own way!_
* Install ruby 2.6.6 with rvm 
* Install git
* Install Postgres 12 and launch your postgres server locally 
    * make the database listen on localhost:5432 for tcp connection and accept the user/password combination postgres/postgres
    * Follow instruction inside crew_api/README.md to create the database, run the migrations and  seedings.
* The Rails environment to use is 'development', the database driver is already setup to connect to the settings described above.

_If you did not succeed to setup correctly the environment after 30 minutes, just go to step 2 and start coding._
    

#### 2. Api endpoint to code

###### Insert a certification date:
---

  **Request**: PUT /api/crew/{crew_id}/certificate

  **Body**: { "certificate-date": "YYYY-MM-DD" }

  **Response**: 204 No Content


###### Get a certification date:
---
  **Request**: GET /api/crew/{crew_id}/certificate

  **Body**:

  **Response**: 200 ok


Response can either be:

{ "message": "Is certified" } or  { "message": "Is not certified" }


_If you can think of a better way for certificating the crew, feel free to implement your own. Be prepared to defend your choices :)_ 

#### 3. Any time left? feel free to add features to the certification system.

* Notification system
* Multiple certificate
* Grouping people by teams/company
* Any other idea to show off your skills!


## When you are done, submit a PR to this repo.