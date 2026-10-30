import express from "express";

//Er flyttet til Routes nu.
// import * as housesController from "./controllers/houses.controller.js";
// import * as coursesController from "./controllers/courses.controller.js";
// import * as teachersController from "./controllers/teachers.controller.js";
// import * as studentsController from "./controllers/students.controller.js";

import housesRouter from "./routes/houses.router.js";
import teachersRouter from "./routes/teachers.router.js";
import studentsRouter from "./routes/students.router.js";
import coursesRouter from "./routes/courses.router.js";

const app = express();
const port = 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => res.send("Hello World"));

//-----------------------------------------------------------------------------

app.use("/houses", housesRouter);
app.use("/teachers", teachersRouter);
app.use("/students", studentsRouter);
app.use("/courses", coursesRouter);

app.listen(port, () => console.log(`Server kører på http://localhost:${port}`));
