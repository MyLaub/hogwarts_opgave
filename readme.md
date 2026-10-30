Hogwarts Course Management

- Serveren kører på http://localhost:3000
- Start serveren med npm start (kør selvfølgelig npm install først, vil jeg antage)

Endpoints:

HOUSES:
Metode: GET | Route: /houses | Beskrivelse: Get all houses / Se liste over alle huse
Metode: GET | Route: /houses/:id | Beskrivelse: Get single houses / Se specifikt hus

STUDENTS:
Metode: GET | Route: /students | Beskrivelse: Get all students / Se liste over alle studerende
Metode: GET | Route: /students/:id | Beskrivelse: Get single students / Se data på specifik studerende
Metode: POST | Route: /students | Beskrivelse: Create new students / Tilføj en ny elev
Metode: PUT | Route: /students/:id | Beskrivelse: Update student / Ændr i studerendes data
Metode: DELETE | Route: /students/:id | Beskrivelse: Delete student / Slet elev

TEACHERS:
Metode: GET | Route: /teachers | Beskrivelse: Get all teachers / Se liste over alle lærere
Metode: GET | Route: /teachers/:id | Beskrivelse: Get single teachers / Se data på specifik lærer
Metode: POST | Route: /teachers | Beskrivelse: Create new teachers / Tilføj en ny lærer
Metode: PUT | Route: /teachers/:id | Beskrivelse: Update student / Ændr i lærers data
Metode: DELETE | Route: /teachers/:id | Beskrivelse: Delete student / Slet lærer

COURSES:
Metode: GET | Route: /courses | Beskrivelse: Get all courses / Se liste over alle hold
Metode: GET | Route: /courses/:id | Beskrivelse: Get single courses / Se data på specifikt hold
Metode: POST | Route: /courses | Beskrivelse: Create new courses / Tilføj et nyt hold
Metode: PUT | Route: /courses/:id | Beskrivelse: Update student / Ændr i holds data
Metode: DELETE | Route: /courses/:id | Beskrivelse: Delete student / Slet hold

--------------------------------

ENDPOINT TESTS:


Testene ligger i mappen "Hogwarts" og er lavet i Bruno.
Klik open collection og vælg mappen "Hogwarts". 
Start server med npm start.
Prøv det af ;D

