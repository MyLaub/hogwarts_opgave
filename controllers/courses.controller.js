import * as coursesRepository from "../repositories/courses.repository.js";

export async function getAllCourses(req, res) {
  try {
    const allCourses = await coursesRepository.getAllCourses();
    console.log("all Courses:", allCourses);
    res.json(allCourses);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
}

export async function getCourseById(req, res) {
  try {
    const id = req.params.id;
    const course = await coursesRepository.getCourseById(id);

    if (course) {
      res.status(200).json(course);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function createCourse(req, res) {
  try {
    const course = req.body;
    const newCourse = await coursesRepository.createCourse(course);
    res.status(201).json(newCourse);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function updateCourse(req, res) {
  try {
    const id = req.params.id;
    const course = req.body;
    const updatedCourse = await coursesRepository.updateCourse(id, course);

    if (updatedCourse) {
      res.status(200).json(updatedCourse);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function deleteCourse(req, res) {
  try {
    const id = req.params.id;
    const deleted = await coursesRepository.deleteCourse(id);

    if (deleted) {
      res.sendStatus(204);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}
