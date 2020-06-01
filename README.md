# RoR Test.

* Please use git to save your work.
* Feel free to improve what is already there along the way
* Designed to be done in one hour

## Design a certification system for construction crew
* The storage is already setup with Postgres, our database choice here at Buildsafely.
* The crew API to manage a crew is already available at localhost:3000/api/crew when launching the project.

#### 1. Api endpoint to code

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

{ "message": "Is certificated" } or  { "message": "Is not certificated" }


_If you can think of a better way for certificating the crew, feel free to implement your own. Be prepared to defend your choices :)_ 

#### 2. Any time left? feel free to add features to the certification system.

* Notification system
* Multiple certificate
* Grouping people by teams/company


