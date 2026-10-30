Pseudokode - Hogwarts Course Management

I min opgave er alt bygget op på samme måde (med samme kodestruktur/princip).

Router: tjekker metode og route og sender videre til den rigtige controller
Controller: tager id, kalder repository og bestemmer hvad der sendes tilbage (statuskode feks. success eller error)
Repository: det eneste sted der snakkes med databasen. Her bestemmer vi hvad der skal ske når vi har fået fat i databasen.

GET /teachers (hent alle lærere)

ROUTER sender videre til getAllTeachers i controlleren (navigerer egentlig bare).
CONTROLLER beder repository om alle lærere.
REPOSITORY henter alt fra teachers-tabellen og sender listen tilbage.
CONTROLLER sender listen som JSON (200).
Går noget galt med databasen, sendes statuskode 500 tilbage.

Samme sker i GET /houses, GET /students og GET /courses.

---

GET /teachers/:id (hent en enkelt lærer)

ROUTER sender videre til getTeacherById.
CONTROLLER tager id'et fra URL'en og sender det til repository.
Repository leder efter læreren med det id:

- findes den ikke: send null tilbage
- findes den: send læreren tilbage
  CCONTROLLER tjekker hvad den fik tilbage: - en lærer: send den som JSON (200) - null: send 404 (fejl)
  Databasefejl: 500

Samme for GET /houses/:id, GET /students/:id og GET /courses/:id.

---

POST /teachers (opret ny lærer)

ROUTER sender videre til createTeacher
CONTROLLEREN tager data fra body (fra bruno (her skriver vi i JSON)) og sender det til repository
REPOSITORY indsætter en ny række i databasen og sender den nye lærer tilbage med et id til controller.
CONTROLLER sender den nye lærer som JSON (201) success.
Sker der en databasefejl: statuskode 500

Ingen 404 statuskode her, for vi leder ikke efter noget der findes i forvejen.

Samme for POST /students og POST /courses.
(Ved courses skal students sendes som et array af navne.)

---

PUT /teachers/:id (opdater en lærer)

ROUTER sender/navigerer videre til updateTeacher
CONTROLLER tager id fra URL'en skrevet i bruno og de nye data fra body (bruno/JSON) og sender begge dele til repository
REPOSITORY opdaterer rækken med det id

- blev intet opdateret: send null tilbage
- ellers: send den opdaterede lærer tilbage
  CONTROLLER tjekker hvad den fik: - en lærer: send den som JSON (200) - null: send 404 status
  Databasefejl: 500

Samme for PUT /students/:id og PUT /courses/:id.

---

DELETE /teachers/:id (slet en lærer)

ROUTER sender videre til deleteTeacher
CONTROLLER tager det givne id og giver det til repository
REPOSITORY sletter rækken med det id og svarer ja/nej til om noget blev slettet
CONTROLLER tjekker svaret: - ja: send 204 (gik godt, intet indhold) - nej: send 404
Databasefejl: 500 (som på de andre)

Samme for DELETE /students/:id og DELETE /courses/:id.

---

Statuskoder jeg bruger:
200 = success
201 = success - noget blev oprettet
204 = success - noget blev slettet
404 = id'et findes ikke
500 = databasen har fejlet
