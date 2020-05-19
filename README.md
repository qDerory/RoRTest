# RoR Test.

Please use git to save your work.
Feel free to improve what is already there along the way

#### 1. Design a certification system for construction crew
The storage can be either filesystem or database
###### Design Datamodel of Crew Members
---
###### Design Apis for managing them
---

#### 2. Api endpoint to code

###### Insert a graduation date:
---

  **Request**: PUT /api/certificate/{username}

  **Body**: { "certificate-date": "YYYY-MM-DD" }

  **Response**: 204 No Content


###### Get a graduation date:
---
  **Request**: GET /api/certificate/{username}

  **Body**:

  **Response**: 200 ok


Response can either be:

{ "message": "Is graduated" } or  { "message": "Is not graduated" }



#### 3. How would you integrate certificate expiration notification


#### 4. Group crews by companies and teams

###### Design datamodel:
---

###### How would you integrate these datamodel changes?:
---
