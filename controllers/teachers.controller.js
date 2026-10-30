import * as teachersRepository from "../repositories/teachers.repository.js";

export async function getAllTeachers(req, res) {
  try {
    const allTeachers = await teachersRepository.getAllTeachers();
    console.log("all Teachers:", allTeachers);
    res.json(allTeachers);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
}

export async function getTeacherById(req, res) {
  try {
    const id = req.params.id;
    const teacher = await teachersRepository.getTeacherById(id);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

//alle nedenstående controllers er identiske med getStudentById - med undtagelse af createStudent, da der ikker er noget "der ikke findes" i forvejen, når vi opretter en ny student. Den ligner derfor getAllStudents.

export async function createTeacher(req, res) {
  try {
    const teacher = req.body;
    const newTeacher = await teachersRepository.createTeacher(teacher);
    res.status(201).json(newTeacher);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function updateTeacher(req, res) {
  try {
    const id = req.params.id;
    const teacher = req.body;
    const updatedTeacher = await teachersRepository.updateTeacher(id, teacher);

    if (updatedTeacher) {
      res.status(200).json(updatedTeacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function deleteTeacher(req, res) {
  try {
    const id = req.params.id;
    const deleted = await teachersRepository.deleteTeacher(id);

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
