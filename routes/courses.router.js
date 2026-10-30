import express from "express";
import * as coursesController from "../controllers/courses.controller.js";

const coursesRouter = express.Router();

coursesRouter.get("/", coursesController.getAllCourses);
coursesRouter.get("/:id", coursesController.getCourseById);
coursesRouter.post("/", coursesController.createCourse);
coursesRouter.put("/:id", coursesController.updateCourse);
coursesRouter.delete("/:id", coursesController.deleteCourse);

export default coursesRouter;